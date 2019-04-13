#write your code here

def add(a,b)
    return (a+b)
end

def subtract(a,b)
    return (a-b)
end

def sum(arr)
    sum = 0
    arr.each do |x|
        if (x.is_a?(Numeric))
            sum += x
        end
    end
    return sum
end

def multiply(*factors)
    prod = 1
    factors.each do |x|
        if (x.is_a?(Numeric))
            prod *= x
        end
    end
    return prod
end

def power(a,b)
    return a**b
end

def factorial (n)
    if n == 0
        return 1
    else
        return n*factorial(n-1)
    end
end