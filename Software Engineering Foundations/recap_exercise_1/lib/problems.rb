# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
def all_vowel_pairs(words)
vowels = "aeiou"
new_array = []
words.each_with_index do |word, idx|
(idx+1..words.length-1).each do |word_value|
    new_array << word + " " + words[word_value]
end
end
newer_array = []
new_array.each do |word_pair|
    has_vowel = false
    vowels.each_char do |vowel|
        if word_pair.include?(vowel)
            has_vowel = true
        else
            has_vowel = false
            break
        end
    end
    if has_vowel == true
        newer_array << word_pair
    end
end
newer_array
end
    





# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)
composite_num = false
(2...num).each do |divisors|
    if num%divisors == 0
        return true
        composite_num = true
    end
end
if composite_num == false
    return false
end
end


# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
def find_bigrams(str, bigrams)
split_array = str.split(" ")
new_array = []
split_array.each do |word|
    bigrams.each do |bigram_check|
        if word.include?(bigram_check)
            new_array << bigram_check
        end
    end
end
new_array.to_set.sort_by &bigrams.method(:index)
end

class Hash
    # Write a method, Hash#my_select, that takes in an optional proc argument
    # The method should return a new hash containing the key-value pairs that return
    # true when passed into the proc.
    # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
    #
    # Examples:
    #
    # hash_1 = {x: 7, y: 1, z: 8}
    # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
    #
    # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
    # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
    # hash_2.my_select                            # => {4=>4}
    # hash = {"cat"=>"dog", "purple"=>"purple", "sound"=>"music", "open"=>"open"}
    def my_select(&prc)
        prc ||= Proc.new {|k, v| k == v }
        self.select { |key, value| prc.call(key, value) } 
    end
end

class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]
    def substrings(length = nil)
        new_array = []
        self.each_char.with_index do |char, idx|
            (idx..self.length-1).each do |value|
            new_array << self[idx..value]
            end
        end
        if length
            new_array.select {|word| word.length == length}
        else
            new_array
        end  
    end


    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"
    def caesar_cipher(num)
        words = "abcdefghijklmnopqrstuvwxyz"
        new_string = ""
        self.each_char do |letter|
            words.each_char.with_index do |word_letter, idx|
                if letter == word_letter
                    new_string += words[(idx+num)%26]
                end
            end
        end
        new_string
    end
end

