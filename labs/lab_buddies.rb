require 'pry' 

sample = %w{Adrian Derrick Larry Jasmine Raymond Dustin Aaron Chris Zahra Gaurav Audric Avinash Jon Derrick Tim Chang Marc Thomas}
sample_length = sample.length 
starting_index = 0 



user_prompt = "how many people in a group"
puts user_prompt 

group_size = gets.to_i
ending_index = group_size - 1 

new_sample = sample.shuffle

while ending_index < sample_length 

	counter ||= 1

	if group_size + ((sample_length -1) - ending_index) < group_size * 2
		puts "Here is group #{counter}: #{new_sample[(starting_index..(sample_length-1))].join(' , ')}" 
	
	else

		puts "Here is group #{counter}: #{new_sample[(starting_index..ending_index)].join(' , ')}"
	
	end

	starting_index = ending_index + 1
	ending_index += group_size 

end






	
