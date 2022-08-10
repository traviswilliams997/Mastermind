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
    def initialize
    end
    def choose_code
        puts "You can choose from six colours for your code"
        puts "Colours are: Red, Blue, Yellow, Orange, Purple, Green"
        puts "Enter first colour"
        @colour1 = gets.chomp
        puts "Enter second tcolour"
        @colour2 = gets.chomp
        puts "Enter third colour"
        @colour3 = gets.chomp
        puts "Enter fourth colour"
        @colour4 = gets.chomp

      @code = [@colour1, @colour2, @colour3, @colour4]
      p @code
    end
  
  end

  class Player2
    def initialize
    end
    def guess_code
        puts "You can choose from six colours for your guess"
        puts "Colours are: Red, Blue, Yellow, Orange, Purple, Green"
        puts "Enter first colour"
        @guess1 = gets.chomp
        puts "Enter second tcolour"
        @guess2 = gets.chomp
        puts "Enter third colour"
        @guess3 = gets.chomp
        puts "Enter fourth colour"
        @guess4 = gets.chomp
    end
    class Game
    
    end
  new_game = Board.new
  #new_game.current_board
  p1 = Player1.new
  p1.choose_code