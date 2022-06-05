# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

# So initiially i looped through the array assigning each value of the array to the i, then I realized that I did not want to loop through the array itself but from 0 to the array length

def peak_finder(arr)
new_array = []
(0..arr.length-1).each do |i|
    if i == 0
        if arr[i] > arr[i+1]
            new_array << arr[i]
        end
    elsif i == arr.length - 1
        if arr[i] > arr[i-1]
            new_array << arr[i]
        end
    elsif i > 0 && i < arr.length - 1
        if arr[i] > arr[i+1] && arr[i] > arr[i-1]
            new_array << arr[i]
        end
    end
end
return new_array
end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]