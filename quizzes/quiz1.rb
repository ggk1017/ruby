require 'pry
'

puts "what is your name?"
name = gets

puts "what is your first number?"
a = gets.to_i

puts "what is your second number?"
b = gets.to_i

puts "what is your third number?"
c = gets.to_f

#Equations to compute results
d = (a + b)*c

e = a ** b 

f = (a * b) #forgot the code for square root. math.sqrt? 

puts "Sally, your results are: D= #{d}, E= #{e}, F=#{f}."

binding.pry