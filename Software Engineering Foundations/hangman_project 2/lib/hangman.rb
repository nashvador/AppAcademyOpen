class Hangman

DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

def self.random_word 
  DICTIONARY.sample
end

def initialize
  @secret_word = Hangman.random_word
  @guess_word = Array.new(@secret_word.length, "_")
  @attempted_chars = []
  @remaining_incorrect_guesses = 5
end

def guess_word
  @guess_word
end

def attempted_chars
  @attempted_chars
end

def remaining_incorrect_guesses
  @remaining_incorrect_guesses
end

def already_attempted?(char)
  if @attempted_chars.include?(char)
    return true
  else
    return false
  end
end

def get_matching_indices(character)
i = 0 
match = []
while i = @secret_word.index(character, i+1)
  match << i
end
match
end

def fill_indices(char, array)
array.each do |idx|
  @guess_word.delete_at(idx)
  @guess_word.insert(idx, char)
end
end

end
