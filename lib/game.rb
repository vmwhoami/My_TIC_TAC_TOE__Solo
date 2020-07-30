require_relative 'players.rb'
require_relative 'board.rb'
class Game
  attr_accessor :player_one_name, :player_two_name, :board
  def initialize
    @players = Players.new
    @players.new_players
    @player_one = @players.player_one
    @player_two = @players.player_two
    @already_picked = []
    @game_size = nil
    @game_long = nil
  end

  def begin_game
    puts
    puts 'Please input a game size a nuber'
    puts 'The game is a square matrix so number 4 is 4X4 game '
    print "If the input won't be a number the game will be 3X3 by default: "
    size = gets.chomp.to_i
    size = 3 if size.zero?
    @board = Board.new(size)
    @board.display_board
    puts 'We will randomly select a player to start'
    game_size
    ask_move_update_board
  end

  def game_size
    @game_size = @board.fluid_board.size * @board.fluid_board.size
  end

  def game_long
    @game_long = @board.fluid_board.size * @board.fluid_board.size
  end

  def draw?
    @game_size.zero?
  end

  def swap_players(arr)
    arr[0], arr[1] = arr[1], arr[0]
    arr[0]
  end

  def ask_move_update_board
    game_long
    players = [@player_two, @player_one]

    until @board.win? || draw?
      player = swap_players(players)
      name = player[:name]
      mark = player[:mark]
      print "#{name} please make a move remember you are playing with #{mark} :  "
      move = gets.chomp.to_i
      until @board.valid_move?(move)
        puts "Please input a number between 1 and #{@game_long}"
        print "check that the other playes didn't input that already :  "
        move = gets.chomp.to_i
      end
      @board.update_board(@board.find_index(move), mark)
      @board.display_board
      puts "#{name} has won congratulations you piece of shit!" if @board.win?
      @game_size -= 1
    end
    return "It's a draw you losers" unless draw?
  end
end
