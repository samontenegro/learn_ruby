#write your code here

$vowels = ['a','e','i','o','u']

def piglatin(str) # this function takes a trimmed string consisting of only one word and applies piglatin's rules
    text = str.strip
    if $vowels.include?(text[0]) && text[-1] != "q"
        return text + "ay"
    else
        return piglatin(text[1..-1] + text[0])
    end
end

def translate(str)
    text_arr = str.strip.split(" ")
    text_arr = text_arr.collect {|x| piglatin(x)}
    return text_arr.join(" ")
end
