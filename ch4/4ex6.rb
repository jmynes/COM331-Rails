# Chapter 4 example 6

# If elsif else
if count > 10
  puts "Try again"
elsif tries == 3
  puts "You lose"
else
  puts "Enter a number"
end


# While
while weight < 100 and num_pallets <= 30
  pallet = next_pallet()
  weight += pallet.weight
  num_pallets += 1
end

# One line variants
puts "Danger, Will Robinson" if radiation > 3000
distance = distance * 1.2 while distance < 100


# Blocks and Iterators
{ puts "Hello" }        # this is a block
do                      ###
  club.enroll(person)   # and so is this
  person.socialize      #
end                     ###

greet  { puts "Hi" }
verbose_greet("Dave", "loyal customer")  { puts "Hi"}

# Blocks used in conjunction with iterators
animals = %w( ant bee cat dog elk )   # create an array
animals.each {|animal| puts animal }  # iterate over the contents


# times()
3.times { print "Ho! " }  #=>  Ho! Ho! Ho!


# The & prefix operator allows methods to capture a passed block as a named parameter
def wrap &b
  print "Santa says: "
  3.times(&b)
  print "\n"
end
wrap { print "Ho! " }