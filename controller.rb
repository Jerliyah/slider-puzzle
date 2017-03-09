require_relative "board.rb"

class Controller
	
	def new_game
		@board = [1,2,3,4,5,6,7,8,'_']
		10000.times do 
			scramble_board
		end
		display_board
	end

	def test_input(input)
		if input.class != String || ("1".."8").include?(input) == false
			return false
		else
			return true
		end
	end

	def prompt_user(prompt = "Which tile would you like to move?")
		puts prompt
		user_input = gets.chomp
		test_input(user_input) ? move(@board.index(user_input.to_i)) : prompt_user("That is not a valid move--Please try again!")
	end
	
	def scramble_board
		place = neighbors.sample
		move(place)
	end

	def move(tile)
		if neighbors.include?(tile)
			tile1 = @board.index("_")
			@board[tile1], @board[tile] = @board[tile], @board[tile1]
		else
			prompt_user("That is not a valid move--Please try again!")
		end
	end

	def game_solved?
		@board == [1,2,3,4,5,6,7,8,'_']
	end


	def neighbors
	  # assume 9 coordinates
	  result = []
	  i = @board.index("_")
	  result << i - 3 if i / 3 > 0
	  result << i + 3 if i / 3 < 2
	  result << i - 1 if i % 3 > 0
	  result << i + 1 if i % 3 < 2
	  result
	end

#View Methods
	def display_board
	    styled_board = @board.map { |val| 
	        "[#{val}]"
	    }
	    puts styled_board[0...3].join('')
	    puts styled_board[3...6].join('')
	    puts styled_board[6...9].join('')
	end

	def clear_view
		print "\e[2J"
		print "\e[H"
	end


end
