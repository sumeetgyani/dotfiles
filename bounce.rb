#!/usr/bin/ruby
# Get all running containers
running_containers = `docker inspect --format='{{.Name}}' $(sudo docker ps -q --no-trunc)`.lines
# Removing leading slash in name because docker restart cannot except that format
running_containers.map! {|container| container[1..-1]}

def display_choices(choices)
	choices.each_with_index do |choice, index|
		puts (index+1).to_s + ') ' + File.basename(choice)
	end
end

begin
	puts "\n0) Display running scripts"
	display_choices(running_containers)
	user_choice = $stdin.gets.chomp.to_i
	if user_choice === 0
		puts "\nRunnings scripts:"
		puts `ps aux | grep -v "^grep" | grep ".*\.php"`
	else
		chosen_container = running_containers[user_choice-1]
		puts "Restarting #{chosen_container}" 
		puts `docker restart #{chosen_container}`
	end
end until user_choice != 0



