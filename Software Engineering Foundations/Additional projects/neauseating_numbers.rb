def pair_product(array, sum)
sum_bool = false
array.each_with_index do |array_value,idx|
    (idx+1..array.length).each do |value|
        if array_value * array[value] == sum
            return true
        else
            sum_bool = false
        end
    end
end
return false
end

def perfect_square?(num)
    (Math.sqrt(x) % 1).zero?
end

def