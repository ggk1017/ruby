require 'pry'

load 'person.rb'
load 'animal.rb'
load 'farm.rb'

people = []
animals = []
farms = []


puts "Do you want to add a (p)erson (a)nimal (f)arm or (q)uit?"
add = gets.chomp

while add != "q"
	
	if add == "p"
		puts "what farm would you like to add your person to?"
		puts "#{farms}"
		response = gets.chomp

		farms.each do |farm_name|
			if farm_name.to_s == response

				puts "What is the name?"
				name = gets.chomp

				puts "what is the age?"
				age = gets.to_i

				puts "what is the gender male or female?"
				gender = gets.chomp

				p1 = Person.new(name, age, gender)
				farm_name.people << p1
			end
		end
binding.pry

	elsif add == "a" 
		puts "what is the name of the animal?"
		name = gets.chomp

		puts "what is the species?"
		species = gets.chomp

		puts "what is the gender?"
		gender = gets.chomp

		 a1 = Animals.new(name, species, gender)
		 animals << a1

	elsif add == "f"
		puts "what is the name of the farm"
		name = gets.chomp

		 f1 = Farm.new(name)
		 farms << f1

	end

	puts "Do you want to add a (p)erson (a)nimal (f)arm or (q)uit?"
	add = gets.chomp

end

farms.each do |farm_name|
	puts "Farm name: #{farm_name}"
	puts "People: #{farm_name.people}"
	puts "Animals #{farm_name.animals}"

end

