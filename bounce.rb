#!/usr/bin/ruby

# Get all running containers and removing leading slash in name because docker restart cannot except that format
running_containers = `docker inspect --format='{{.Name}}' $(sudo docker ps -q --no-trunc)`.lines.map! {|container| container[1..-1]}

puts "\nRunnings scripts:"
puts "================="
# Only show processes that start with "php" or "hhvm"
# TODO figure out why the or operator doesn't work with grep
puts `ps -e -o command | grep "^php "`
puts `ps -e -o command | grep "^hhvm "`
running_containers.each_with_index do |container_name, index|
	puts (index+1).to_s + ') ' + container_name
end
puts 'q) quit'

def isValid(user_choice, optionsLength)
	return user_choice == 'q' || (user_choice.to_i > 0 && user_choice.to_i <= optionsLength)
end

user_choice = $stdin.gets.chomp
while !isValid(user_choice, running_containers.length)
	puts "Invalid input. Please select one of the numbers or 'q'"
	user_choice = $stdin.gets.chomp
end

return if user_choice == 'q'
chosen_container = running_containers[user_choice.to_i-1]
puts "Restarting #{chosen_container}"
puts `docker restart #{chosen_container}`
