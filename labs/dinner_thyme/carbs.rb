class Carb < Food
	attr_accessor :grain_type

	def initialize(c, s, p, g)
		@calories = c
		@servings = s
		@prep_time = p
		@grain_type= g
	end

	#def to_s
		"#{servings} servings of #{grain_type} has #{calories} calories and takes #{prep_time} min to prepare"
	end
end