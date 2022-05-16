def no_dupes?(arr)
print arr.reject{|x| arr.count(x)>1}
end

