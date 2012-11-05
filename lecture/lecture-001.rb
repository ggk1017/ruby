#require 'pry'

# this is a comment
# use this any time you need to explain something

puts "what is your name?"
first = gets  
#version 1 - normal 
puts = "You typed in " + first
#version 2 - string interpolation #{first} is a shorter way to concatonate strings
puts "you typed in #{first}"
#version 3 - single quotes does not work 
puts 'you typed in #{first}'

puts "enter a number?" #example 3
a = gets # gets the response as a string and makes it a 
a = a.to_i #converts it to an integer. now a = 3

puts "enter a floating point number"
b = gets
b = b.to_i

c = a + b 
puts "the result of #{a} summed with #{b} is #{c}"

#binding.pry

puts "what is your age"
age = gets.to_i #shorter - will get whatever you put it, convert it to a string then convert it to an integer

if age < 5
	puts "you are a baby"
elsif (age >= 5) && (age < 18) #if age is greater than or equal to 5 AND less than 18
	puts "you are a minor"
else
	puts "you are an adult"
end

puts "enter a letter"
letter = gets.chomp #what is a chomp?

#case statement
case letter
when "a"
	puts "you typed in a"
	
when "b"
	puts "you typed in b"
	
when "c"
	puts "you typed in c"
	
when "d"
	puts "you typed in d"
	
end

#looping
puts "enter a starting number"
start = gets.to_i
puts "enter an ending number"
stop = gets.to_i

while start <= stop
	puts "counting #{start}"
	start += 1
end

#methods
def square(a)
	a * a 
end

def volume(l, w, h)
	l * w * h 
end

puts "length?"
length = gets.to_i
puts "width?"
width = gets.to_i
puts "height?"
height = gets.to_i
vol = volume(length, width, height)
puts "the volume of #{length} and #{width} and #{height} is #{vol}"

puts "enter a number to square"
b = gets.to_i
c = square(b)
puts "the square of #{b} is #{c}"



