def element_count(array)
store_values_hashed = Hash.new(0)
array.each do |value|
    store_values_hashed[value] += 1
end
store_values_hashed
end

def char_replace!(str, hash)
new_string = ""
str.each_char do |letter|
    if hash.has_key?(letter)
        new_string += hash[letter]
    else
        new_string += letter
    end
end
str.replace(new_string)
end




def product_inject(array)
return array.inject(:*)

end