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
array_new = sentence.split(" ")
array_new.map do |x|
    if array.include?(x.downcase)
        x.gsub(/[aeiou]/i, "*")
    else
        x
    end
end
array_new.join(" ")
end

def power_of_two?(num)
    num != 0 && (num & (num-1)) == 0
end