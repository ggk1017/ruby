require 'pry'

load 'food.rb'
load 'protein.rb'
load 'carbs.rb'

dinner = []

puts "what type of food do you want to prepare? (p)rotein or (c)arb or (q)uit? "
response = gets.chomp

while response != 'q'

	if response == 'p'

		puts "what type of meat will you prepare?"
		animal_type = gets.chomp

		puts "how many servings will you be making?"
		servings = gets.chomp.to_i

		puts "how many calories are in one serving?"
		calories = gets.chomp.to_i

		puts "how long will it take to prepare?"
		prep_time = gets.chomp.to_i

		p1 = Protein.new(calories, servings, prep_time, animal_type)
		dinner << p1

	elsif response == 'c'

		puts "what type of carb will you prepare?"
		grain_type = gets.chomp

		puts "how many servings will you be making?"
		servings = gets.chomp.to_i

		puts "how many calories are in one serving?"
		calories = gets.chomp.to_i

		puts "how long will it take to prepare?"
		prep_time = gets.chomp.to_i

		c1 = Carb.new(calories, servings, prep_time, grain_type)
		dinner << c1		
	end


puts "what type of food do you want to prepare? (p)rotein or (c)arb or (q)uit? "
response = gets.chomp

end


total_calories = 0
total_prep = 0

dinner.each {|x| total_prep = total_prep + x.prep_time}
dinner.each {|x| total_calories = total_calories + x.calories}

puts "the total calories are #{total_calories}"
puts "the total prep time is #{total_prep}"




