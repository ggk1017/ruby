#quiz2 - part 1


 

#quiz2 - 2

colors = [' blue ', ' green ', ' yellow ', ' red ']

puts "would you like to add a color? (y)es or (q)uit?"
response = gets.chomp

	if response = "y"
		puts "please add a color"
		color = gets.chomp
		colors << color
		puts " #{colors}"  #display the array with the new color

	
	elsif 
		puts " #{colors}" #display the array with no new color added
	
	end

# i tried to use a while loop so that the user could enter 
# more colors, but i couldn't get it to work. 
