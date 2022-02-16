class GuessingGame
    def initialize(min, max)
        @min = min
        @max = max
        @secret_num = rand(@min..@max)
        @game_over = false
        @num_attempts = 0
    end

    def num_attempts
        @num_attempts

    end

    def secret_num 
      @secret_num
    end

    def game_over?
        @game_over
    end

    def check_num(guess_value)
        if guess_value == @secret_num
            @game_over = true
            print "you win"
        elsif guess_value > @secret_num
            print "too big"
        elsif guess_value < @secret_num
            print "too small"
        end
        @num_attempts += 1
    end

    def ask_user
        print "enter a number "
        num = gets.chomp.to_i
        check_num(num)
    end


end
