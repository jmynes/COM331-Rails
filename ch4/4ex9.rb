# Chapter 4 example 9

# Similar to classes, but objects cannot be based on modules
# These act as a namespace, letting users define methods whose
# names won't clash with those defined elsewhere.
#
# Additionally, users can use these to share functionality among classes.
# If a class mixes in a module, that module's methods become available as if they
# had been defined in the class. Multiple classes can mix in the same module,
# sharing its functionality without using inheritance. Multiple can be mixed into
# a single class as well.
module StoreHelper
  def capitalize_words(string)
    string.split(' ').map {|word| word.capitalize}.join(' ')
  end
end