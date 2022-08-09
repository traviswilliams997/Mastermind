  class  Board
    def initialize
        @board_state = [["x","x","x","x"], ["x","x","x","x"], ["x","x","x","x"]]    
    end
    def current_board
        @board_state.each do |row|
            row.each do |col|
              print col
              print " "
            end
            puts " "
          end
    end
     
 
  end
  class Player1
  
  end
  new_game = Board.new
  new_game.current_board