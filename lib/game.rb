require_relative 'game_intro'
require_relative 'players'
require_relative 'board'

class Game
  attr_accessor :player_one_name, :player_two_name, :board

  def initialize
    game_introduction
    @players = Players.new
    @players.new_players
    @player_one = @players.player_one
    @player_two = @players.player_two
    @already_picked = []
  end

  def game_rules
    puts
    puts 'Please input a game size (a number):'
    puts 'The game is a square matrix, so number 4 means a 4x4 game.'
    print "If the input isn't a number, the game will default to 3x3: "
  end

  def play_game
    game_rules
    size = gets.chomp.to_i
    size = 3 if size.zero? || size < 3
    @board = Board.new(size)
    @board.display_board
    puts 'We will randomly select a player to start'
    @game_size = size * size
    ask_move_update_board
  end

  def draw?
    @game_size.zero?
  end

  def ask_move_update_board
    players = [@player_one, @player_two].shuffle

    until @board.win? || draw?
      player = players.first
      name = player[:name]
      mark = player[:mark]
      print "#{name}, please make a move. Remember, you are playing with #{mark}: "
      move = gets.chomp.to_i

      until @board.valid_move?(move)
        puts "Please input a number between 1 and #{@game_size}:"
        print "Check that the other player hasn't already picked that number: "
        move = gets.chomp.to_i
      end

      @board.update_board(@board.find_index(move), mark)
      @board.display_board

      if @board.win?
        puts "#{name} has won! Congratulations!"
        return
      end

      players.rotate!
      @game_size -= 1
    end

    puts "It's a draw! You are both losers!" if draw?
  end
end
