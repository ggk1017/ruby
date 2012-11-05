puts "Would you like to use Trip Calculator? (y) or (n)"
response = gets.chomp

while response != "n"
	puts "How far are you going?"
	dist = gets.to_i
	puts "What is your speed?"
	speed = gets.to_i
	puts "What is the cost of gas per gallon"
	cost = gets.to_f
	puts "What is the mpg of your car"
	mpg = gets.to_i
	puts "how much money do you have?"
	money = gets.to_f

	#gallons needed
	g = dist / mpg

	#trip cost
	trip = g * cost

	#balance cash
	bal = money - trip

	#trip time
	time = dist / speed


		if money >= trip
			puts "You will arrive in #{time} hours with $#{bal} left"

		elsif money < trip 	
			puts "You dont have enough money for your trip"

		end
		
	puts "Would you like to use Trip Calculator? (y) or (n)"
	response = gets.chomp
end


