class Players 
attr_accessor :player_one, :player_two ,:players
 
def initialize 
  @players = []
  @player_one =  nil
  @player_two =  nil
end

    def ask_name
       name = gets.chomp 
      while not_empty_name(name) 
        puts "You @%?#!!!!! please input not an empty name"
        name = gets.chomp 
      end
      while same_name(name)
        puts "The name can not be the same so please input another name"
        name = gets.chomp 
      end
       @players << name
    end

  def same_name(name)
    @players.include?(name)
  end

    def not_empty_name(name)
      name.empty?
    end

    
    def random_player
      @player_one = @players.sample
      @player_two = @players.select{|name| name!= @player_one}.join
    end
end

# load "players.rb"
#player = Players.new
#player.ask_name
#player.random_player
#player.player_one
#player.player_two
