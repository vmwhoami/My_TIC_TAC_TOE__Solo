class Board
  attr_accessor :fluid_board

  def initialize(size)
    @fluid_board = Array.new(size) { Array.new(size, '-') }
    populate_board
  end

  def populate_board
    board_num = @fluid_board.size * @fluid_board.size
    arr = (1..board_num).to_a
    @fluid_board.each_index do |i|
      @fluid_board[i].map!.with_index { |_, j| arr[i * @fluid_board.size + j] }
    end
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


  def valid_move?(move)
    @fluid_board.flatten.include?(move.to_i)
  end

  def find_index(num)
    @fluid_board.each_with_index do |row, row_idx|
      col_idx = row.index(num)
      return [row_idx, col_idx] if col_idx
    end
    []
  end

  def update_board(move, value)
    row, col = move
    @fluid_board[row][col] = value
  end

  def win_row?
    @fluid_board.any? { |row| row.uniq.length == 1 }
  end

  def win_col?
    @fluid_board.transpose.any? { |col| col.uniq.length == 1 }
  end

  def win_diagonal_right?
    (0...@fluid_board.size).collect { |i| @fluid_board[i][i] }.uniq.length == 1
  end

  def win_diagonal_left?
    (0...@fluid_board.size).map { |i| @fluid_board[i][@fluid_board.size - 1 - i] }.uniq.length == 1
  end

  def win?
    win_row? || win_col? || win_diagonal_right? || win_diagonal_left?
  end
end
