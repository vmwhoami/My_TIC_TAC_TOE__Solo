class Board
    attr_accessor :fluid_board 
 def initialize(size)
    @fluid_board = Array.new(size){Array.new(size, "-")}
    self.populate_board
 end

 def display_board

@fluid_board.each do |row|
      puts
      puts '-'*(row.size*5)
      row.each do |col|   
      print "| #{col} |" if "| #{col} |".size == 5
      print "| #{col}|" if "| #{col} |".size > 5
      end
   end
   puts
   puts '-'*(@fluid_board.size*5)
   puts
 end

def populate_board
 board_num =  @fluid_board.size * @fluid_board.size
  arr = (1..board_num).to_a
      @fluid_board.map!.with_index do |row,indx_1|
         row.map!.with_index do |col,indx_2|
               col = arr.shift
         end
      end
end


end

# # load "board.rb"
# board = Board.new(4)
# # p board.populate_board
# board.display_board
