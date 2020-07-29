require_relative "players.rb"
require_relative "board.rb"
class Game
	attr_reader :player_one_name, :player_two_name
	attr_accessor :board
	def initialize	
	@players = Players.new
	@players.new_players
	@player_one = @players.player_one
	@player_two = @players.player_two
	@player_one_name = @player_one[:name]
	@player_two_name = @player_two[:name]
	@already_picked =[]
	@game_size = 9
	end

	def ask_game_size
		puts "Please input a game size a nuber if no size will be provided"
		print " or the input won't be a number the game will be 3X3 by default: "
		size = gets.chomp.to_i
    	size = 3 if  size == 0 
		@board = Board.new(size)
		@board.display_board
    end

	def game_size
		@game_size = @board.fluid_board.size*@board.fluid_board.size
	end 

	def valid_move?(move)
		return true	if	@board.fluid_board.find { |el| el.find{|col| col == move.to_i} }
		false
	end
	
	def find_index(num)
		@already_picked << num
		arr = []
		@board.fluid_board.each_with_index do |row,indx|
			if row.include?(num)
				arr << indx
				arr << row.index(num)
			end
		end
		arr
	end
   
	def update_board(move,value)
	  a,b = move
	  @board.fluid_board[a][b] = value
	end

	def made_move?(num)
		@already_picked.include?(num)
	end
	
	def draw?
    @game_size == 0
	end
	 
	def win?
	end

end

# # load "game.rb"
game = Game.new
game.ask_game_size
game.find_index(3)
game.update_board([0,2],":X")
p game.made_move?(1)
p game.game_size

