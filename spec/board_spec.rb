require './lib/game.rb'

describe Board do
  describe 'board manipulations' do
    let(:board) { Board.new(4) }
    let(:grid) { Board.new(4) }

    describe 'fluid board' do
      it 'should set @grid to be a 2D array with n rows and n columns' do
        grid = board.fluid_board
        expect(grid.length).to eq(4)
      end
    end

    describe '#find_index' do
      it 'should find the index of a value on the 2D array' do
        expect(board.find_index(5)).to eq([1, 0])
        expect(board.find_index(15)).to eq([3, 2])
      end
    end

    describe '#update_board' do
      it 'should take and index an array and a value and should update the board' do
        grid.update_board([3, 2], 'hello')
        board.update_board([3, 2], 'hello')
        grval = grid.fluid_board[3][2]
        bval = board.fluid_board[3][2]
        expect(grval).to eq(bval)
      end
    end
    describe '#populate_board' do
      it 'should populate the board with numbers' do
        expect(board.fluid_board[0][0]).to eq(1)
        expect(board.fluid_board[3][1]).to eq(14)
      end
    end

    describe '#valid_move' do
      context 'shout check for the position' do
        it "should check the move is does't go over the board " do
          expect(board.valid_move?(6)).to eq(true)
        end
        it "should check the move is does't go over the board " do
          expect(board.valid_move?(20)).to_not eq(true)
        end
      end

      context 'shoud check that the value is a number' do
        it 'should check that the input is a number ' do
          expect(board.valid_move?(14)).to eq(true)
        end
        it "should check the move is does't go over the board " do
          expect(board.valid_move?('world')).to_not eq(true)
        end
      end
    end

    describe '#win_row?' do
      context 'all are equal' do
        it 'should check for a row win scenario' do
          board.update_board([0, 0], 'hello')
          board.update_board([0, 1], 'hello')
          board.update_board([0, 2], 'hello')
          board.update_board([0, 3], 'hello')
          expect(board.win_row?).to eq(true)
        end
      end
      context 'not all are equal' do
        it 'should check for a row win scenario' do
          board.update_board([1, 0], 'hello')
          board.update_board([1, 1], 'hello')
          board.update_board([1, 2], 'hello')
          board.update_board([1, 3], 'X')
          expect(board.win_row?).to_not eq(true)
        end
      end
    end

    describe '#win_col?' do
      context 'all are equal' do
        it 'should check for a column win scenario' do
          board.update_board([0, 0], 'L')
          board.update_board([1, 0], 'L')
          board.update_board([2, 0], 'L')
          board.update_board([3, 0], 'L')
          expect(board.win_col?).to eq(true)
        end
      end
      context 'not all are equal' do
        it 'should check for a column win scenario' do
          board.update_board([0, 2], 'L')
          board.update_board([1, 2], 'L')
          board.update_board([2, 2], 'L')
          board.update_board([3, 2], 'X')
          expect(board.win_col?).to_not eq(true)
        end
      end
    end

    describe '#win_diagonal_left?' do
      context 'all are equal' do
        it 'should check for a diagonal win scenario' do
          board.update_board([0, 0], 'L')
          board.update_board([1, 0], 'L')
          board.update_board([2, 0], 'L')
          board.update_board([3, 0], 'L')
          expect(board.win_col?).to eq(true)
        end
      end
      context 'not all are equal' do
        it 'should check for a diagonal win scenario' do
          board.update_board([0, 2], 'L')
          board.update_board([1, 2], 'L')
          board.update_board([2, 2], 'L')
          board.update_board([3, 2], 'X')
          expect(board.win_col?).to_not eq(true)
        end
      end
    end
  end
end
