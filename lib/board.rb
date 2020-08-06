class Board
  attr_accessor :fluid_board
  def initialize(size)
    @fluid_board = Array.new(size) { Array.new(size, '-') }
    populate_board
  end

  def display_board
    @fluid_board.each do |row|
      puts
      puts '-' * (row.size * 5)
      row.each do |col|
        print "| #{col} |" if "| #{col} |".size == 5
        print "| #{col}|" if "| #{col} |".size > 5
      end
    end
    puts
    puts '-' * (@fluid_board.size * 5)
    puts
  end

  def populate_board
    board_num = @fluid_board.size * @fluid_board.size
    arr = (1..board_num).to_a
    @fluid_board.map! { |row| row.map { arr.shift } }
  end

  def valid_move?(move)
    return true	if @fluid_board.find { |el| el.find { |col| col == move.to_i } }

    false
  end

  def find_index(num)
    arr = []
    @fluid_board.each_with_index do |row, indx|
      if row.include?(num)
        arr << indx
        arr << row.index(num)
      end
    end
    arr
  end

  def update_board(move, value)
    a, b = move
    @fluid_board[a][b] = value
  end

  def win_row?
    @fluid_board.each { |row| row.each { |col| return true if row.all?(col) } }
    false
  end

  def win_col?
    @fluid_board.transpose.each { |row| row.each { |col| return true if row.all?(col) } }
    false
  end

  def win_diagonal_right?
    arr = @fluid_board
    r_padding = [*0..(arr.size - 1)].reverse.map { |i| [nil] * i }
    padded_r = r_padding.reverse.zip(arr).zip(r_padding).map(&:flatten)
    right = padded_r.transpose.map(&:compact).select { |el| el.size == arr.size }.flatten
    right.uniq.compact.length == 1
  end

  def win_diagonal_left?
    arr = @fluid_board
    l_padding = [*0..(arr.size - 1)].map { |i| [nil] * i }
    padded_l = l_padding.reverse.zip(arr).zip(l_padding).map(&:flatten)
    left = padded_l.transpose.map(&:compact).select { |el| el.size == arr.size }.flatten
    left.uniq.compact.length == 1
  end

  def win?
    win_row? || win_col? || win_diagonal_right? || win_diagonal_left?
  end
end
