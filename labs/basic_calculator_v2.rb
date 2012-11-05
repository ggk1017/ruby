

puts "do you want to (a)dd (s)subtract (m)ultiply (d)ivide squa(r)e or (p)ower? "
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
	elsif response == "d"	
		total = first / second
	elsif response == "p"	
		total = first ** second
	elsif response == "r"	
		total = Math.sqrt(first)
	end

puts "the result of #{first} and #{second} is #{total}"




