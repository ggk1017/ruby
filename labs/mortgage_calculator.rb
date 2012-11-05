puts "Would you like to make a mortgage calculation today? (y)es or (n)o?"
answer = gets.chomp

while answer != "n"
	puts "please enter your principal amount"
	p = gets.to_f
	puts "please enter your term amount (in years)"
	m = gets.to_i
	puts "please enter your interest rate (ex '0.075)"
	r = gets.to_f

end	

def calculation(p, m, r)
	((p*r)*(1+r)**m)/(((1+r)**m) - 1)
end

calc = calculation(p, m, r)
puts "your mortgage payment is #{calc}"