# every?
# Write a method every? that accepts an array and a block
#  as arguments. The method should return a boolean indicating
#   whether or not all elements of the array return true when given 
#   to the block. Solve this using Array#each.

# Examples
def every?(arr,&bck)

arr.each do |i|
if !bck.call(i)
    return false;
end
end
return true
end


p every?([3, 1, 11, 5]) { |n| n.even? }                                 # false
p every?([2, 4, 4, 8]) { |n| n.even? }                                  # true
p every?([8, 2]) { |n| n.even? }                                        # true
p every?(['squash', 'corn', 'kale', 'carrot']) { |str| str[0] == 'p' }  # false
p every?(['squash', 'pea', 'kale', 'potato']) { |str| str[0] == 'p' }   # false
p every?(['parsnip', 'potato', 'pea']) { |str| str[0] == 'p' }          # true