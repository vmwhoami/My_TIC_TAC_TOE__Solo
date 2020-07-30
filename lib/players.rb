class Players
  attr_accessor :player_one, :player_two, :players

  def initialize
    @players = []
    @player_one = { name: nil, mark: 'X' }
    @player_two = { name: nil, mark: 'O' }
  end

  def ask_name
    name = gets.chomp
    while not_empty_name(name)
      print 'You @%?#!!!!! please enter a name that is not empty: '
      name = gets.chomp
    end
    while same_name(name)
      print 'The name can not be the same so please input another name you shmuck: '
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
    @player_one[:name] = @players.sample
    @player_two[:name] = (@players - [@player_one[:name]]).join
  end

  def new_players
    print "What's your name Hoe?: "
    ask_name
    print 'Second hoe please enter your name: '
    ask_name
    random_player
  end
end
