def reverser(word, &prc)
new_word = word.reverse
prc.call(new_word)
end

def word_changer(sentence, &prc)
new_array = sentence.split(" ")
newer_array = []
new_array.each do |words|
    newer_array << prc.call(words)
end
newer_array.join(" ")
end

def greater_proc_value(number, proc_1, proc_2)
if proc_1.call(number) > proc_2.call(number)
    return proc_1.call(number)
else
    return proc_2.call(number)
end
end

def and_selector(array, proc1, proc2)
new_array = []
array.each do |number|
    if proc1.call(number) && proc2.call(number)
        new_array << number
    end
end
new_array
end

def alternating_mapper(array, proc1, proc2)
new_array = []
array.each_with_index do |number, idx|
    if idx%2 == 0
        new_array << proc1.call(number)
    else
        new_array << proc2.call(number)
    end
end
new_array
end