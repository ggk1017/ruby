require 'pry'

module One
	def be_one
		"i am one"
	end
end

module Two
	def be_two
		"i am two"
	end
end

module Three
	def be_three
		"i am three"
	end
end

class A 
	def be_a
		"i am A"
	end
end

class B < A
	include One
	include Two

	def be_b
		"i am B"
	end
end

class C < B
	include Three
	def be_c
		"i am C"
	end
end

