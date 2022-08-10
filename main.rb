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

        @guess = [@guess1, @guess2, @guess3, @guess4]

    end
end
    class Game
        def initialize
        b = Board.new
        p1 = Player1.new
        p2 = Player2.new
    
        end
        p1.choose_code
       
        p2.guess_code
        if @code == @guess
            p "Win"
        else
          p "Lose"
        end       
         
    end
    new_game = Game.new

 