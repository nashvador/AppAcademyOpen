class Dog
def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
end

def name
    @name
end

def breed
    @breed
end

def age
    @age
end

def age=(new_age)
    @age = new_age
end

def bark
    if @age > 3
        @bark.upcase
    else
        @bark.downcase
    end
end

def favorite_foods
    @favorite_foods
end

def favorite_food?(value)
    if @favorite_foods.include?(value[0].upcase + value[1..-1].downcase)
        return true
    else
        return false
    end
end

end
