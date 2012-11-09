#farms.each {|f| puts f.name}
#farms.map {|f| f.name}
#farms.map {|f| f.name}.join(',')


require 'pry'

load 'person.rb'
load 'animal.rb'
load 'farm.rb'

puts "Do you want to add a (p)erson (a)nimal (f)arm or (q)uit?"
response = gets.chomp

#farms = [] #array should be plural of class
farms = {} #hash - 




while response != "q"
	case response #use the case/when when there are more than 2 options...
	when 'f'
		puts "name?"
		name = gets.chomp

		farm = Farm.new(name) #creating the object
		#farms << farm
		farms[name] = farm # farms is a hash - the key (string in brackets) is the name and its value is the object that it represents.

		puts "Do you want to add a (p)erson (a)nimal (f)arm or (q)uit?"
		response = gets.chomp
	

	when 'p'
		puts "name?"
		name = gets.chomp
		puts "age?"
		age = gets.chomp
		puts "gender?"
		gender = gets.chomp

		person = Person.new(name, age, gender) #created a person. n, a, g needs to be in the same order as on the attr_accessor


		puts "what farm would you like? #{farms.map {|f| f.name}.join(',')}?"
		farm_name = gets.chomp
		farms[farm_name].people << person
		
			#old schoool--------
			#farm_found = nil 

			#farms.each do |farm|
			#	if (farm.name == farm_name)
			#		farm_found = farm
			#	end
			#end

	when 'a'
		puts "name?"
		name = gets.chomp
		puts "species?"
		species = gets.chomp
		puts "gender?"
		gender = gets.chomp

		animal = Animal.new(name, species, gender)
		puts "what farm would you like? #{farms.map {|f| f.name}.join(',')}?"
		farm_name = gets.chomp
		farms[farm_name].animals << animal
		

		#farm_found = nil 
		#farms.each do |farm|
		#		if (farm.name == farm_name)
		#			farm_found = farm
		#		end
		#end
end


	

puts "Do you want to add a (p)erson (a)nimal (f)arm or (q)uit?"
response = gets.chomp

end