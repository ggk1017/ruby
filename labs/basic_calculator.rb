

puts "do you want to (a)dd (s)subtract or (q)uit"
answer = gets.chomp

while answer != "q"
	puts "first?"
	first = gets.to_i
	puts "second?"
	second = gets.to_i

	if response == "a"
		total = first + second
	elsif response == "s"
		total = first - second	
	end

puts "the result of #{first} and #{second} is #{total}"

puts "do you want to (a)dd (s)subtract or (q)uit"
answer = gets.chomp

end	



