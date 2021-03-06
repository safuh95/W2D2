require "byebug"
module SlidingPiece
  
   DIRECTIONS = {
     :horizontal => [[0,1], [0,-1], [1,0], [-1,0]],
     :diagonal => [[1, 1], [-1, -1], [-1, 1], [1, -1]]
   }
   
   def horizontal
     DIRECTIONS[:horizontal]
   end
   
   def diagonal
     DIRECTIONS[:diagonal]
   end

  def move_dirs 
    raise "I need to make this!!"
  end
  
  def moves
    arr = []

    value = move_dirs
    value.each do |diff|
      new_positions = @pos.dup
      new_positions[0] += diff[0]
      new_positions[1] += diff[1]
      
      until @board[new_positions].class != NullPiece
            debugger
        arr << new_positions.dup
        new_positions[0] += diff[0]
        new_positions[1] += diff[1]
        break unless @board.valid_pos?(new_positions)
      end
      
      
      arr << new_positions if @board.valid_pos?(new_positions) && @board[new_positions].color != @colors
      
    end
    arr
  end  
  
end