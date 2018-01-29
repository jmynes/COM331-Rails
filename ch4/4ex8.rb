# Chapter 4 example 8

# Ruby class definition example
class Order < ApplicationRecord
  has_many :line_items
  def self.find_all_unpaid
    self.where('paid = 0')
  end
  def total
    sum = 0
    line_items.each {|li| sum += li.total}
    sum
  end
end

# Objects of a class hold their state in instance variables, starting with @
# and are available to all instance methods of a class.
# Each object gets its own set of instance variables
class Greeter
  def initialize(name)
    @name = name
  end
    def name
      @name
    end
  def name=(new_name)
    @name = new_name
  end
end

g = Greeter.new("Barney")
g.name   # => Barney
g.name = "Betty"
g.name   # => Betty


# Ruby's convenience methods will write these accessor methods for you
# Eases the process of getters and setters, huh!  
class Greeter
  attr_accessor   :name       # create reader and writer methods
  attr_reader     :greeting   # create reader only
  attr_writer     :age        # create writer only
end


# Class's instance methods are public by default
# Override this for methods that are intended to be used
# only by other instance methods:
class MyClass
  def m1      # this method is public
  end
  protected
  def m2      # this method is protected
  end
  private
  def m3      # this method is private
  end
end