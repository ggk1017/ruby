class Student

	attr_accessor :name, :dob, :gender, :gpa, :major

	def initialize(n, d, r, g, m)
		@name = n
		@dob = d
		@gender = r
		@gpa = g
		@major = m

	end

	def to_s
	  "#{name} a #{gender} born on #{dob}, has a gpa of #{gpa} and is majoring in #{major}"
		
	end


students = []

	puts "What is your name?"
	name = gets.chomp

	puts "what is your date of birth"
	dob = gets.chomp

	puts "what is your gender"
	gender = gets.chomp

	puts "what is your gpa"
	gpa = gets.chomp

	puts "what is your major"
	major = gets.chomp

	s1 = Student.new(name, dob, gender, gpa, major)
	students << s1

	puts "#{students}"

end
