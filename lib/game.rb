require_relative "players.rb"
require_relative "board.rb"
class Game
	attr_reader :player_one, :player_two
	def initialize	
	@players = Players.new
	@players.new_players
	@player_one = @players.player_one
	@player_two = @players.player_two
	end

	def ask_game_size
		print "Please input a game size if no size will be provided the game will be 3X3 by default: "
		size = gets.chomp.to_i
    	size = 3 if  size == 0 || size.empty?
		@board = Board.new(size)
		@board.display_board
    end


	def check_non_num?(val)
		el = val.to_i
		return false if el > 0 
		true
	end


end

# A new board a new player_1 new player_2 a new winner 
# A new winner
# # load "game.rb"
# game = Game.new

# game.ask_game_size

