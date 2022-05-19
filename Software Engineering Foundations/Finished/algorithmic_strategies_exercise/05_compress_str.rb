# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

# My first try I tried implementing the .count but I realized it wouldnt work because of mississippi
#Second try I implemented something with the count made them equal 
def compress_str(str)
new_array = []
count = 1
str.each_char.with_index do |character, idx|
    if character == str[idx+1]
        count +=1
    else
        if count > 1
            stored_value = count.to_s + character
            new_array << stored_value
        else
            new_array << character
        end
        count = 1
    end
end
new_array.join("")
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
