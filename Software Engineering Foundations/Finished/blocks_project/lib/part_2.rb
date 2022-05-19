def all_words_capitalized?(array)
array.all? {|word| word[0] == word[0].capitalize && word[1] !=word[1].capitalize}
end


def no_valid_url?(array)
array.none? {|url| url.include?(".com") || url.include?(".net") || url.include?(".io") || url.include?(".org")}
end

def any_passing_students?(array)
array.any? {|student| student[:grades].sum / student[:grades].length >= 75 }
end