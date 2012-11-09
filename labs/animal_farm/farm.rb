class Farm

	attr_accessor :name, :people, :animals #the objects in the farm class will now all have names, animals and people

	def initialize(n)
		@name = n
		@people = [] #here we are telling ruby that people and animals are empty arrays
		@animals = []
		
	end

	def to_s
	   "#{name}"
	end
		dinner.each {|x| 

end


#old school ---------
# @people and @animals were = [] array. now we are using hashes {}