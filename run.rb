require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo_austin = Zoo.new("Austin Zoo", "Austin")
zoo_Houston = Zoo.new("Houston Zoo", "Houston")

spotty = Animal.new("Dog", 15, "spotty")
spotty.zoo = zoo_austin
olive = Animal.new("Dog", 30, "olive")
olive.zoo = zoo_austin

mushy = Animal.new("Cat", 5, "mushy")
mushy.zoo = zoo_Houston
stout = Animal.new("Guinea Pig", 5, "stout")
stout.zoo = zoo_Houston

binding.pry
puts "done"
