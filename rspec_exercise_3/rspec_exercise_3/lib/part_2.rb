def element_count(arr)
    hash=Hash.new(0)
    arr.each{|v| hash[v]+=1}

    return hash
end

def char_replace!(str,hash)
str.each_char.with_index{|char,i| hash.has_key?(char) ? str[i]=hash[char] : next}
return str
end

def product_inject(arr)
    return arr.inject(1){|i,j|i*j}
    
end