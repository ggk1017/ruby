require 'pry'

class Play 

	def walk 
		puts "i am walking"
	end

	def Play.run 
		puts "i am running"
	end

end

puts "#{Play.run}"

p = Play.new
puts "#{p.walk}"