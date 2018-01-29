# Chapter 4 example 3

# Example of a method to return a greeting

def say_goodnight(name)
  result = 'Good night, '+ name
  return result
end

# Time for bed...
puts say_goodnight('Mary-Ellen') # => 'Goodnight, Mary-Ellen'
puts say_goodnight('John-Boy') # => 'Goodnight, John-Boy'


puts # Separation of output


# Expression interpolation, using doubel quotes

def say_goodnight(name)
  "Good night, #{name.capitalize}"
end
puts say_goodnight('pa')