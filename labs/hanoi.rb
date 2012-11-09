require 'pry'

def get_piece(start, ending, board, num_pieces)

#grabs piece based on user input

	iterator = 0
	column_length = board[("col" + start).to_sym].length
	piece = ""

	while iterator < column_length #checking for the top "non space" piece
		if board[("col" + start).to_sym][-(iterator + 1)] != " " # uses negative iterator to begin at end of array 
			piece = board[("col" + start).to_sym][-(iterator + 1)] # if not space, grab it as the piece
			position = iterator
			iterator = column_length
		end
		iterator += 1 
	end

	move_piece(piece, ending, board, num_pieces, position, start)

end

def move_piece(piece, ending, board, num_pieces, position, start)

	iterator = 0
	column_length = board[("col" + ending).to_sym].length
	while iterator < column_length

		if board[("col" + ending).to_sym][iterator] == " "
			board[("col" + ending).to_sym][iterator] = piece
			board[("col" + start).to_sym][-(position + 1)] = " " # change the space where we moved the piece to blank space
			draw(num_pieces, board)
			iterator = column_length
		elsif board[("col" + ending).to_sym][iterator] < piece
			puts "INVALID MOVE"
			iterator = column_length
		end
		iterator += 1 
	end	
end

def draw(num_pieces, board)

	puts `clear`
	row = num_pieces

	while row >= 0
		puts "#{board[:col1][row]}\t#{board[:col2][row]}\t#{board[:col3][row]}" 
		row -= 1
	end

end 

board = {
	:col1=>[],
	:col2=>[],
	:col3=>[]
}

puts "How many game pieces do you want?"
num_pieces = gets.to_i
starting_pieces = num_pieces
# binding.pry

while starting_pieces > 0
	board[:col1].push(" ")
	
	board[:col2].push(starting_pieces)

	board[:col3].push(" ")
	
	starting_pieces -= 1
end

draw(num_pieces, board)

puts "Which column to which column (start, end), or (q)uit?"
move = gets.chomp
move = move.split(", ") if move != "q"

while move != "q"
	
	start = move[0]
	ending = move[1]

	get_piece(start, ending, board, num_pieces) if start != ending

	puts "Which column to which column (start, end), or (q)uit?"
	move = gets.chomp
	move = move.split(", ") if move != "q"
end



binding.pry