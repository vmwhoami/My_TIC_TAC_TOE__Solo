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
      print 'Please enter a name that is not empty: '
      name = gets.chomp
    end
    while same_name(name)
      print 'The name can not be the same so please input another name: '
      name = gets.chomp
    end
    @players << name
  end

  def new_players
    print 'First person input your name : '
    ask_name
    print 'Second person please enter your name: '
    ask_name
    random_player
  end

  private

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
end
