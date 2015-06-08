#while loop to begin the game
#input on if they'd like to play

#prompts player one to pick a square

#adds an x or an o to the square
#checks to see if a player has won

#repeats prompt

#needs something to print out the board nicely
class Game
	def initialize
		@board = [" "]*9
	end

	def move (marker, square)
		@board[square] = marker
	end

	#needs to return true if it is an invalid choice
	def illegal_move? (square)
		@board[square] != " "
	end

	def winner?(marker)
		winner = false
		winner = true if @board[0,3] == [marker, marker, marker]
			
		winner = true if @board[3,6] == [marker, marker, marker]
			
		winner = true if @board[6,9] == [marker, marker, marker]
			
		winner = true if @board[0] == marker && @board[3] == marker && @board[6]== marker
		
		winner = true if @board[1] == marker && @board[4] == marker && @board[7]== marker
			
		winner = true if @board[2] == marker && @board[5] == marker && @board[8]== marker
			
		winner = true if @board[0] == marker && @board[4] == marker && @board[8]== marker
			
		winner = true if @board[2] == marker && @board[4] == marker && @board[6]== marker

		return winner
	end

	def print_board
		puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
		puts "---+---+---"
		puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
		puts "---+---+---"
		puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
	end
end


puts "Who wants to play tic-tac toe? Enter anything to play!"
first_input = gets.strip
puts "Awesome. Player 1 will be \"X\" while Player 2 will be \"O\"s"
while first_input != "stop"
	gameboard = Game.new
	turn = "Player 1"
	winner = "none"
	count = 0

	#runs one whole round of the game
	while winner == "none" && count !=8
		puts turn + " please choose a square (0-8)"
		square = gets.strip.to_i

		#checks to make sure that the player gives valid move
		while gameboard.illegal_move?(square)
			puts "That is not a valid option. Please try again"
			square = gets.strip.to_i
		end

		if turn == "Player 1"
			gameboard.move("X", square)
			turn = "Player 2"
			if gameboard.winner? ("X")
				winner = "Player 1"
			end

		else
			gameboard.move("O", square)
			turn = "Player 1"
			if gameboard.winner? ("O")
				winner = "Player 2"
			end
		end
		count += 1
		gameboard.print_board
	end
	if count == 8
		puts "Cats game!"
	else
		puts "That's game! " + winner + " wins!"
	end
	puts "Would you like to play again."
	puts "Enter anything to play, enter \"stop\" to stop"
	winner = "none"
	first_input= gets.strip
end



