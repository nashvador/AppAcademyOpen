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