# Chapter 4 example 4

# Arrays and the nil object

a = [ 1, 'cat', 3.14 ]  # array with three elements
a[0]                    # access the first element (1)
a[2] = nil              # set the third element
                        # array now [ 1, 'cat', nil ]

# Append a single value to ages array

ages = []
for person in @people
  ages << person.age
end


# Here's a nice shortcut for array of words creation
# Instead of the following
a = ['ant', 'bee', 'cat', 'dog', 'elk']
# Use this, it's the same:
a = %w{ ant bee cat dog elk }


# Hash literal, similar to an array.
# Two objects are used for every entry:
# one for the key, the other for the value.
inst_section = {
  :cello     =>  'string',
  :clarinet  =>  'woodwind',
  :drum      =>  'percussion',
  :oboe      =>  'woodwind',
  :trumpet   =>  'brass',
  :violin    =>  'string'
}

# Here's equivalent shorthand syntax
# style can even be mixed between the two in a single expression
inst_section = {
  cello:    'string',
  clarinet: 'woodwind',
  drum:     'percussion',
  oboe:     'woodwind',
  trumpet:  'brass',
  violin:   'string'
}

# *** REMEMBER! ***
# If the value is a symbol, there must be 
# _at least one_ space between the colons to avoid a syntax error.
inst_section = {
  cello:    :string,
  clarinet: :woodwind,
  drum:     :percussion,
  oboe:     :woodwind,
  trumpet:  :brass,
  violin:   :string
}

# Hashes are indexed in a similar fashion
inst_section[:oboe]     #=> 'woodwind'
inst_section[:cello]    #=> 'string'
inst_section[:bassoon]  #=> nil