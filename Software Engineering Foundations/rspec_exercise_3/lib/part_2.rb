def element_count(array)
store_values_hashed = Hash.new(0)
array.each do |value|
    store_values_hashed[value] += 1
end
store_values_hashed
end

