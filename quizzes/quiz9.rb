require 'pry'

class Mathematics
	
	def Mathematics.fact(n)
    	(1..n).reduce(:*)
  	end

	def Mathematics.factorial(n)
		if n <= 1
			1
		else
		n * fact(n - 1)
		end
	end
end




