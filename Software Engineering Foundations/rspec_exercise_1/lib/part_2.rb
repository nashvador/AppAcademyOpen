def hipsterfy(word)
word.reverse.sub(/[aeiou]/,"").reverse
end

def vowel_counts(sentence)
sentence.gsub(/[^aeiou]/, "").each_char.each_with_object(Hash.new(0)) {|vowel,hash|hash[vowel] += 1 }
end


def caesar_cipher(str, num)
alphabet = "abcdefghijklmnopqrstuvwxyz"
new_array = []
str.each_char do |search|
    alphabet.each_char.with_index do |cipher, idx|
        if search == cipher
            new_array << alphabet[(idx+num)%26]
        end
    end
end
return new_array.join("")
end

