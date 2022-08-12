  class  Board
    attr_accessor :board_state

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
    attr_accessor :code

    def initialize
    end
    def choose_code
       
      @code = Array.new(4)  
      rand_num = 4.times.map{ 1 + Random.rand(5)} 
      rand_num.each_with_index  do |number, index|
          if number == 1
            @code[index] = "RED"
          end
          if number == 2
            @code[index] = "BLUE"
          end
          if number == 3
            @code[index] = "YELLOW"
          end
          if number == 4
            @code[index] = "ORANGE"
          end
          if number == 5
            @code[index] = "PURPLE"
          end
          if number == 6
            @code[index] = "GREEN"
          end
        end
      p rand_num 

      p @code
    end
  
  end

  class Player2
    attr_accessor :guess

    def initialize
    end
    def guess_code
        puts "You can choose from six colours for your guess"
        puts "Colours are: Red, Blue, Yellow, Orange, Purple, Green"
        puts "Enter first colour"
        @guess1 = gets.chomp
        puts "Enter second colour"
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
        @b = Board.new
        @p1 = Player1.new
        @p2 = Player2.new
        @p1.choose_code
        self.play_round
            
  
        end

        def check_guess
          win = true
          
          for i in 0..3 do  
            
            unless @p1.code[i] == @p2.guess[i]
                win = false
            end
          end

          if win 
            p "Win"
          else
            p "Lose"
          end
        end


        def play_round
          for i in 0..2 do 
            @p2.guess_code  
            @b.board_state[i] = @p2.guess

            p @b.board_state
            self.guess_feedback
          end
        end

        def guess_feedback
          @red_peg = 0;
          @white_peg = 0;
          index_count = 0;
          remaining_code = Array.new()  
          remaining_guess = Array.new()  
          for i in 0..3 do  
            
            if  @p1.code[i] == @p2.guess[i]
                @red_peg = @red_peg + 1;
            end

            unless  @p1.code[i] == @p2.guess[i]
                remaining_code[index_count] = @p1.code[i]
                remaining_guess[index_count] = @p2.guess[i]
                index_count = index_count + 1
            end
           
          end
          for i in 0..remaining_guess.length do 
             if remaining_code.include? remaining_guess[i] 
              @white_peg = @white_peg + 1 ;
             end
            end
            

          
          p "You have #{@red_peg} red pegs"
          p "You have #{@white_peg} white pegs"
          p remaining_code
          p remaining_guess
        end
       
       
      end
    new_game = Game.new


 