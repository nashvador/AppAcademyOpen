def select_even_nums(array)
array.select(&:even?)
end

def reject_puppies(array)
array.reject {|puppy| puppy["age"] < 3}
end

def count_positive_subarrays(array)
array.count {|x| x.sum > 0}
end

def aba_translate(str)
vowels = "aeiou"
new_string = ""
str.each_char do |char|
    if vowels.include?(char)
        new_string += char + "b" + char
    else
        new_string += char
    end
end
new_string
end

def aba_array(array)
array.map {|x| aba_translate(x)}


end
