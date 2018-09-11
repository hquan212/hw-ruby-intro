# When done, submit this entire file to the autograder.
# Robert Quan

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
=begin
Takes a string and returns true if the string represents 
a binary number that is a multiple of 4.
=end

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


