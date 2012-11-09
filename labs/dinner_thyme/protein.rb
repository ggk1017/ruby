class Protein < Food
	attr_accessor :animal_type
	
	def initialize(c, s, p, a)
		@calories = c
		@servings = s
		@prep_time = p
		@animal_type = a
		

	end

	def to_s
		"#{servings} servings of #{animal_type} has #{calories} calories and takes #{prep_time} min to prepare"
	end
end