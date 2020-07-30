require_relative 'players.rb'
require_relative 'board.rb'
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
    @already_picked = []
    @game_size = 9
  end

  def ask_game_size
    puts 'Please input a game size a nuber if no size will be provided'
    print " or the input won't be a number the game will be 3X3 by default: "
    size = gets.chomp.to_i
    size = 3 if size.zero?
		@board = Board.new(size)
		@board.display_board
		self.game_size
  end

  def game_size
    @game_size = @board.fluid_board.size * @board.fluid_board.size
  end

	def made_move?(num)
    @already_picked.include?(num)
	end
	
	def draw?
    @game_size.zero?
  end

	
	def make_move
		puts "We will randomly select a player to start #{@player_one_name} "
		"#{@player_one_name} make a move!"

	end

end

# # load "game.rb"
game = Game.new
game.ask_game_size

