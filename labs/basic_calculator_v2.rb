

puts "do you want to (a)dd (s)subtract (m)ultiply or (d)ivide"
answer = gets.chomp

	puts "first?"
	first = gets.to_i
	puts "second?"
	second = gets.to_i

	if response == "a"
		total = first + second
	elsif response == "s"
		total = first - second
	elsif response == "m"
		total = first * second
	else response == "d"	
		total = first / second
	end

puts "the result of #{first} and #{second} is #{total}"

end	



