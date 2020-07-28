class Board
    attr_accessor :fluid_board 
 def initialize(size)
    @fluid_board = Array.new(size){Array.new(size, "-")}

 end

 def display_board
  puts "_____________"
  puts
  puts  "| #{@fluid_board[0][0]} | #{@fluid_board[0][1]} | #{@fluid_board[0][2]} |"
  puts '-------------'
  puts
  puts  "| #{@fluid_board[1][0]} | #{@fluid_board[1][1]} | #{@fluid_board[1][2]} |"
  puts '-------------'
  puts
  puts  "| #{@fluid_board[2][0]} | #{@fluid_board[2][1]} | #{@fluid_board[2][2]} |"
  puts "_____________"
 end

def valid?(position)
   # a,b
end

def empty?(position)
end


end

#what is a new board supposed to have board size for a big board
# 
# # load "board.rb"
# boar = Board.new(3)
# boar.display_board