class Number

	attr_accessor :number

	def initialize(n)
		@number = n

	end

	def square(n)
		n**2
	end

numbers = []

puts "do you want to enter a (n)umber or (q)uit"
response = gets.chomp

	while response != 'q'
		puts "please enter a number"
		number = gets.chomp.to_i
		n1 = Number.new(number)
		numbers << n1

		puts "do you want to enter a (n)umber or (q)uit"
		response = gets.chomp
	end


puts "#{numbers}"

end

