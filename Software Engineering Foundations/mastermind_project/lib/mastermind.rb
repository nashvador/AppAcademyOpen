require_relative "code"

class Mastermind

    # def initialize(length)
    #     @secret_code = Code.new().pegs.random(length)
    # end

    def self.print_matches(code)
        print @secret_code.num_exact_matches(code)
        print @secret_code.num_near_matches(code)

    end


end
