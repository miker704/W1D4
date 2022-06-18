def is_prime?(n)
return false if n<2
(2...n).none?{|v|n%v==0}
end

def nth_prime(n)

count=0
primeN=2

while (count<n)
    if(is_prime?(primeN))
        count+=1
    end
    primeN+=1
end

return primeN-1

end


def prime_range(min,max)
return (min..max).select{|v| is_prime?(v)}

end

p prime_range(4,17)
p nth_prime(300)