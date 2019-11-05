require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
sandiego = Zoo.new("San Diego", "San Diego")
barbara = Zoo.new("Santa Barbara", "Santa Barbara")
zebra = Animal.new("Zebra", 135, "Jin")
lion = Animal.new("Lion", 300, "Marty")
zebra.zoo = sandiego
lion.zoo = barbara

binding.pry
puts "done"
