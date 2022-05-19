def no_dupes?(arr)
print arr.reject{|x| arr.count(x)>1}
end

def no_consecutive_repeats?(arr)
repeat_bool = true
arr.each_with_index do |value,idx|
    if value == arr[idx+1]
        repeat_bool = false
        break
    else
        repeat_bool = true
    end
end
if repeat_bool == true
    print true
else
    print false
end
end

def char_indices(str)
new_hash = Hash.new([])
str.each_char.with_index do |char, idx|
  new_hash[char] += [idx]
end
print new_hash
end

def longest_streak(str)
new_hash = Hash.new(0)
counter = 0
str.each_char do |char|
    new_hash[char] += 1
end
output_hash = Hash[new_hash.select {|k,v| v == new_hash.values.max}]
print output_hash.keys[-1] *new_hash.values.max

end

def bi_prime(num)
(2..num/2).each do |divisor|
    

end