# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.
def only_vowels?(str)
consonent = "bcdfghjklmnpqrstvxz"
consontent_bool = true
str.each_char do |char|
    consonent.each_char do |consts|
        if char == consts
            consontent_bool = false
        end
    end
end
if consontent_bool == true
    return true
else
    return false
end
end



p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


