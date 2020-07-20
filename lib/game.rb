require_relative "players.rb"
class Game
	attr_reader :player_1 ,:player_2
	def initialize	
		@player_1 = Players.new.ask_name
		@player_2 = Players.new.ask_name
	end

	def not_same_name
	  player_1 != @player_2 
	end

end

# A new board a new player_1 new player_2 a new winner 
# A new winner

f = Game.new
a =  f.player_1
b =  f.player_2


