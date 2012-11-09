require 'pry'
require 'active_support/all'

students = ['Adrian Bautista', 'Larry Buchanan', 'Jasmine Chabra', 'Raymond Chan', 'Dustin Coates', 'Aaron Fuchs', 'Chris Goodmacher', 'Zahra Jabini', 'Avinash Karnani', 'Gaurav Karnani', 'Audric Kim', 'Jonathan Ku', 'Derrick Lannaman', 'Tim LaTorre', 'Hsi-Chang Lin', 'Marc Whitman', 'Thomas Yang']
puts `clear`
puts "Group size?"
size = gets.to_f
is_lonely = (students.count % size.to_i) == 1 #is_lonely is true if there is one person left over.

if is_lonely #ex 17/4.0. since it rounds up we subtract 1 from it. truncate means to round to an integer
  ((students.count / size) - 1).truncate.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"}
  puts "Group z: #{students.to_sentence}"
else
	# of students / group size ---.ceil rounds up ->.times goes through the loop
  (students.count / size).ceil.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"}
end

#ceiling - round up to the next number
#truncate - rounds down 
#to_sentence - takes an array and makes it into a sentence. dont have to use join. need (active support/all)
#.times doesnt work like map in that it doesnt produce a new array. times is a way to loop a sepcifiic number. 
#to loop ten times---> 10.times. we use times here to loop the amount of times = to the group size. 
#so loop through size.times and pop off(size)
#use a floating point for the group size - and use .ceil to round up. ex 17 students and 3 per group. if you use to_i 
#it will make 5 groups. 