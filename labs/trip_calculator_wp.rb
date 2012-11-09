
def trip_calculator(total_mileage, driving_speed, cost_per_gallon, miles_per_gallon, total_money)

cost_of_trip = (total_mileage / miles_per_gallon) * cost_per_gallon
money_remaining = total_money - cost_of_trip
hours_of_trip = (total_mileage / driving_speed)

results = [money_remaining, hours_of_trip]
end 


puts "how far are you going (total milage)?"
total_mileage = gets.to_f

puts "how fast are you driving?"
driving_speed = gets.to_f

puts "How much is gas per gallon?"
cost_per_gallon = gets.to_f

puts "what MPG does your car get?"
miles_per_gallon = gets.to_f

puts "how much money do you have?"
total_money = gets.to_f


if cost_of_trip > total_money)
	puts "Sorry, you do not have enough money for the trip."

else
	puts "You will have $#{results[0]} when you arrive in #{results[1]} hours"

end


		
	puts "Would you like to use Trip Calculator? (y) or (n)"
	response = gets.chomp



