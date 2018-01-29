# Chapter 4 - Pulling It All Together

# Create a table named products
# Assign values of title, description, image_url, and price
class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2
      
      t.timestamps
    end
  end
end


# Ruby Idioms
# empty! and empty? are valid method names in ruby
# ! bang      methods normally do something destructive to the receiver
# ? predicate methods return true or false, depending on some condition

# a ||= b
count += 1          # same as count = count + 1. count++ does not work in Ruby, however.
price *= discount   #         price = price * discount
count ||= 0         #         count = count || 0


# obj = self.new
# Sometimes a class methods needs to create an instance of that class
class Person < ApplicationRecord
  def self.for_dave
    Person.new(name: 'Dave')
  end
end

# Later, someone might subclass our class:
class Employee < Person
  # ..
end

dave = Employee.for_dave  # returns a Person

# The for_dave() method was hardwired to return a Person object,
# so that's what's returned by Employee.for_dave.
# Using self.new instead returns a new object 
# of the receiver's class, Employee


# The lambda operator converts a block into an object of type Proc.
# An alternative syntax since Ruby 1.9 is ->, which is the preferred syntax.


# Ruby's require method loads an external source file into an application.
# This is used to include library code and classes that our application relies on.
# Ruby finds these files by searching in a list of directories, the LOAD_PATH

# require File.expand_path('../../config/environment', __FILE__)