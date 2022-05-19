class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader(:pegs)

  def self.valid_pegs?(array)
    in_pegs = true
    array.each do |value|
      if POSSIBLE_PEGS.has_key?(value.upcase)
      else
        in_pegs = false
      end
    end
    if in_pegs == false
      return false
    else
      return true
    end
  end

  def initialize(array)
    if Code.valid_pegs?(array)
      @pegs = array.map(&:upcase)
    else
      raise "pegs are invalid"
    end
  end



  def self.random(length)
    letters = "RGBY"
    new_array = []
    length.times {|i| new_array << letters[rand(4)] }
    Code.new(new_array)
  end

  def self.from_string(string)
    array = []
    string.each_char do |value|
      array << value
    end
    Code.new(array)
  end

  def [](index)
    @pegs[index]
  end

  def length
    return @pegs.length
  end

  def num_exact_matches(guess)
  counter = 0
  (0..3).each do |values|
    if @pegs[values] == guess.pegs[values]
      counter += 1
    end
  end
  counter
  end

  def num_near_matches(guess)
    

  end

  def ==(other_argument)
    if self.pegs == other_argument.pegs
      return true
    else
      return false
    end 
  end


end
