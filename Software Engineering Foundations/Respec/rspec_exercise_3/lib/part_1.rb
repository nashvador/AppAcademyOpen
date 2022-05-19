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


def nth_prime(n)
prime_array = [0,2,3,5,7,11,13,17,18,23,29,31,37]

if n > 12
    puts n**2 + n + 41
elsif n < 12
    puts prime_array[n]
end



end



def prime_range(number1, number2)


prime_numbers_array = []
if number1.negative? == true 
    return []
end
(number1..number2).each do |check_prime|
    prime = true
    (2...check_prime).each do |divisor|
        if check_prime%divisor == 0
            prime = false
            break
        end
    end
    if prime == true
        prime_numbers_array << check_prime
    end
end
prime_numbers_array



end