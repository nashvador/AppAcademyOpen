def partition(array, number)
greater7 = []
less7 = []
array.each do |x|
    if x < number
        less7 << x
    else
        greater7 <<x
    end
end
return [less7, greater7]
end


def merge(hash_1, hash_2)
hash = {}
hash_1.each {|key, val| hash.store(key, val)}
hash_2.each do |key,val|
    if hash.has_key?(key)
        hash[key] = val
    else
        hash.store(key, val)
    end
end
hash
end

def censor(sentence, array)
words = sentence.split(" ")

words.map do |word|
    word_1 = word
    if array.include?(word_1.downcase)
        word.tr!("aeiouAEIOU", "*")
    else
        word
    end
end

words.join(" ")
end

def power_of_two?(num)
    num != 0 && (num & (num-1)) == 0
end