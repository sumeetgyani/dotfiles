#!/usr/bin/ruby

# Get all running containers and removing leading slash in name because docker restart cannot except that format
running_containers = `docker inspect --format='{{.Name}}' $(sudo docker ps -q --no-trunc)`.lines.map! {|container| container[1..-1]}

# Only show processes that start with "php" or "hhvm"
# TODO figure out why the or operator doesn't work with grep
scripts = `ps -e -o command | grep "^php .*\.php"`.lines
scripts.concat `ps -e -o command | grep "^hhvm .*\.php"`.lines

puts # add empty line for readability
if scripts.empty?
	puts "No currently running scripts!"
else
	puts "Currently running scripts: " 
	puts scripts
end

puts # add empty line for readability
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

abort if user_choice == 'q'
chosen_container = running_containers[user_choice.to_i-1]
puts "Restarting #{chosen_container}"
puts `docker restart #{chosen_container}`
