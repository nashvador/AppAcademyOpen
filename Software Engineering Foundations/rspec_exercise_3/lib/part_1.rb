def is_prime?(number)
prime = true
if number < 2
    return false
else
    (2..number-1).each do |divisors|
        if number%divisors == 0
            return false
            prime = false
        else
            prime = true
        end
    end
end
if prime == true
    return true
end
end



def prime_range(number1, number2)
prime_numbers_array = []
prime = true
(number1..number2).each do |check_prime|
    (2..check_prime).each do |divisor|
        if check_prime%divisor == 0
            prime = false
        end
    end
    if prime == true
        prime_numbers_array << check_prime
    end
end
prime_numbers_array
end