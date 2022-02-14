def palindrome?(string)
if string[0] == string[-1]
    if string[1] == string[-2]
        return true
    else
        return false
    end
else
    return false
end
end




def substrings(string)
new_array = []
string.each_char.with_index do |char, idx|
    (idx..string.length-1).each do |value|
        new_array << string[idx..value]
    end
end
new_array

end

def palindrome_substrings(string)
solution_array = []
newer_array = substrings(string).reject {|x| x.length < 3}
newer_array.each do |word|
    if palindrome?(word)
        solution_array << word
    end
end
solution_array
end