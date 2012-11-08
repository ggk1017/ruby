#quiz 6 

# create an array called numbers with the range from 250-750
numbers = (250..750).to_a

# select the odd numbers in that array and sum them
odd_sum = numbers.select {|n| !n.even?}.inject(&:+)



