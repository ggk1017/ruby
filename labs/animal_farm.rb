people = []

class Person
attr_accessor :name, :age, :gender

	def initialize(n, a, g) 
		@name= n
		@age = a
		@gender = g 	
	end

	def to_s
		 "#{name}, #{age}, #{gender}"
	end

end

puts "Do you want to create a (p)erson or (q)uit?"
response = gets.chomp

	while response != "q"
		puts "name?"
		n = gets.chomp

		puts "age?"
		a = gets.chomp

		puts "gender"
		g = gets.chomp

		p1 = Person.new(n, a, g)
		people << p1


		puts "Do you want to create a (p)erson or (q)uit?"
		response = gets.chomp

	end

	puts "#{people}"

