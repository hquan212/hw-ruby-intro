# When done, submit this entire file to the autograder.

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

# Part 2

def hello(name)
=begin
Takes a string representing a name and returns the string 
"Hello, " concatenated with the name. 
=end
return "Hello, " + name

end

def starts_with_consonant? s
=begin
Takes a string and returns true if it starts with a consonant
and false otherwise. (For our purposes, a consonant is any 
letter other than A, E, I, O, U.) NOTE: be sure it works 
for both upper and lower case and for nonletters! 
=end

  if s.length == 0
    return false
  elsif s.upcase[0].chr =~ /[[:alpha:]]/
    first_letter = s.upcase[0]
    return !(['A','E','I','O','U'].include? first_letter)
  else
    return false
  end


end

def binary_multiple_of_4? s

  list_char = s.chars
  for char in list_char
    if char !~ /[[:digit:]]/
      puts "Enter an binary number"
      return false
    end
  end

  if s =~ /[[:digit:]]/
    puts s
    last_digit = s[-1].to_i
    second_last_digit = s[-2].to_i

    if (last_digit == 1) || (second_last_digit == 1)
      puts "not a multiple of 4"
      return false
    end

  return true
  end

end

# Part 3

class BookInStock

  attr_accessor :isbn   # Getters and setters
  attr_accessor :price  # Getters and setters

  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%.2f" % price
  end

end


binary_multiple_of_4?("0100")
