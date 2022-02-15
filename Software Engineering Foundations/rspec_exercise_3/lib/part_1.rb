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

def nth_prime(number)