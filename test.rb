def piglatinize(s)
    split_sentence = s.split(" ")
    split_word = s.split("")
    if split_sentence.size > 1 
        testing2(split_sentence)
    elsif s.size > 1
        testing(split_word)
    else 
        testing(s)
    end
end

def testing(split_word)
    arr = []
    x = split_word.dup
    result = nil

    if split_word.size > 1 
        split_word.each do |letter|
            break if %w(a e i o u A E I O U).include?(letter)
            arr << letter
        end
            if arr.size > 1
            x.shift(arr.size)
            result = x.join + arr.join + "ay"
            elsif arr.size == 0
            result = split_word.join + "way"
            else
            x.shift(arr.size)
            result = x.join + arr.join + "ay"
            end
    elsif split_word.size == 1 && %w(a e i o u A E I O U).include?(split_word)
        result = split_word + "way"
    end
    result
end

def testing2(met)
    arr = []
    met.each do |x|
        if x.size > 1
        d = x.split("")
        arr << testing(d)
        else 
        arr << testing(x)
        end
    end
    result = arr.join(" ")
end


p piglatinize("i love programming")
p piglatinize("pork")
p piglatinize("I")
p piglatinize("hello")
p piglatinize("please")
p piglatinize("tomorrow")
p piglatinize("until")
p piglatinize("this")
p piglatinize("Enumeration")
p piglatinize("spray")
p piglatinize("prays")