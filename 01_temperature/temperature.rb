#write your code here

def ftoc(far)
    return ((far.to_f - 32.0) / 1.80).round(5)
end

def ctof(cel)
    return ((cel.to_f * 1.8) + 32).round(5)
end