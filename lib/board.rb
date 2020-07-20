class Board
    
 def initialize(size)
    @fluid_board = Array.new(size){Array.new(size, :F)}

 end

 def display_board
    @fluid_board
 end


end

#what is a new board supposed to have board size for a big board
# 

a =  Board.new(3)
p a.display_board