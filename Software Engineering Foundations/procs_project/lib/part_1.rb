def my_map(array, &prc)
mapped = []

array.each do |el|
    mapped << prc.call(el)
end
mapped
end

def my_select(array, &prc)
selected = []

array.each do |el|
    if prc.call(el) == true
        selected << el
    end
end
selected
end

def my_count(array, &prc)
counted = []
array.each do |el|
    if prc.call(el) == true
        counted << el
    end
end
return counted.length
end

def my_any?(array, &prc)
counted = []
    array.each do |el|
        if prc.call(el) == true
            counted << el
        end
    end
if counted.length >= 1
    return true
else
    return false
end
end

def my_all?(array, &prc)
    counted = []
    array.each do |el|
        if prc.call(el) == true
            counted << el
        end
    end
if counted.length == array.length
    return true
else
    return false
end
end

def my_none?(array, &prc)
    counted = []
    array.each do |el|
        if prc.call(el) == true
            counted << el
        end
    end
if counted.length == 0
    return true
else
    return false
end

end