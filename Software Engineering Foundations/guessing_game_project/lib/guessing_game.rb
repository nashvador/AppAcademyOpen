class GuessingGame(min, max)
    def initialize
        @min = min
        @max = max
        @secret_num = rand(@min..@max)
        @game_over = false
    end

    def secret_num 
      @secret_num
    end

    def game_over
        @game_over
    end

    

end
