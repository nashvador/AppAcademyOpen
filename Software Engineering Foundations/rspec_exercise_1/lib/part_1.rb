def average(num1, num2)
(num1+num2) / 2.0
end

def average_array(array)
average = array.inject(:+)/(array.length).to_f
end

def repeat(str, num)
str*num
end

def yell(str)
str.upcase + "!"
end

def alternating_case(sentence)
new_array = sentence.split("")

end