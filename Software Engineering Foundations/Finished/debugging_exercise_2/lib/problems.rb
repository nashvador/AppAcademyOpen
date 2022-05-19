# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.




def largest_prime_factor(num)
prime_array = []
is_prime = true
(2..num).each do |divisor|
    if num%divisor == 0
        (2...divisor).each do |factor|
            if divisor%factor == 0
                is_prime = false
            end
        end
        if is_prime == true
            prime_array << divisor
        end
    end
end
prime_array[-1]
end


def unique_chars?(string)
array = string.split("")
character_hash = Hash.new(0)
array.each do |value|
    character_hash[value] += 1
end
if character_hash.has_value?(2) || character_hash.has_value?(3)
    return false
else
    return true
end
end

def dupe_indices(array)
new_hash = Hash.new([])

array.each_with_index do |value, idx|
    new_hash[value] += [idx]
end
new_hash.each do |key, val|
    if val.length < 2
        new_hash.delete(key)
    end
end
new_hash
end



def ana_array(array1, array2)
hash1 = Hash.new(0)
hash2 = Hash.new(0)

array1.each do |value|
    hash1[value] +=1
end

array2.each do |value|
    hash2[value] +=1
end
if hash1 == hash2
    return true
else
    return false
end

end