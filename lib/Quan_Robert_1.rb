# When done, submit this entire file to the autograder.
# Robert Quan

# Part 1

def sum arr
=begin
Takes an array of integers as an argument and returns
the sum of its elements. For an empty array it should 
return zero.  
=end
  
if arr.empty?
return 0
end

sum = 0
arr.each do |num|
sum += num
end
return sum

end

def max_2_sum arr
=begin
Takes an array of integers as an argument and returns the sum of 
its two largest elements. For an empty array it should return zero. 
For an array with just one element, it should return that element. 
=end

if arr.empty?
  return 0

elsif arr.length == 1
  return arr[0]

else
  max_n1 = arr.max
  arr.delete_at(arr.index(arr.max))
  max_n2 = arr.max
  return (max_n1 + max_n2)

end

end

def sum_to_n? arr, n
=begin
Takes an array of integers and an additional integer,
n, as arguments and returns true if any two elements in 
the array of integers sum to n. sum_to_n?([], n) should 
return false for any value of n, by definition.  
=end

for a in arr
  for b in arr
    if (arr.index(a) != arr.index(b)) && (a+b == n)
      return true
    end
  end
end

return false
end


