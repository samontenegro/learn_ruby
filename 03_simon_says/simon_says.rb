#write your code here

def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, t=2)
    sum = str
    t -= 1
    until t < 1
        sum += " " + str
        t -= 1
    end
    return sum
end

def start_of_word(str, c=1)
    return str[0,c]
end

def first_word(str)
    text = str.strip
    space_index = text.index(" ")
    if space_index == nil
        return text
    else
        return text[0,space_index]
    end
end

def titleize(str)
    little_word = ["the","and","over"]
    word_arr = str.strip.split(" ").collect!.with_index do |x,index|
        if little_word.include?(x.downcase) && index == 0
            x.capitalize
        elsif little_word.include?(x.downcase) && index != 0
            x
        else
            x.capitalize
        end
    end
    return word_arr.join(" ")
end