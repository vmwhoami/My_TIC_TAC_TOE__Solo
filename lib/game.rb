require_relative "players.rb"
class Game
	
	def initialize	
		@players = Players.new
		@player_one = @players
	end

	def not_same_name
	  player_1 != @player_2 
	end
   
	def player_one 
		@player_one = @players.ask_name
		@player_one
	end

	

end

# A new board a new player_1 new player_2 a new winner 
# A new winner



