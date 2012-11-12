require 'pry'

puts "Please enter a number"
response = gets.to_i

	begin
		#not really sure how to go about creating what goes in here. 
		#I used rescue since we want to catch the exception
	rescue 
	response.explode
	end


x = response**2
puts = "the square of #{response} is #{x}"