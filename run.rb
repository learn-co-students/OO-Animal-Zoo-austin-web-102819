require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

# Zoo Test
dc_zoo= Zoo.new("DC Zoo", "Washington, D.C")
san_diego= Zoo.new("San Diego Zoo", "San Diego")
cincinati= Zoo.new("Cinicinati Zoo", "Cincinati")

# Animal Test (with link)
# jimmy= dc_zoo.add_animal("Jimmy the Giraffe", "Giraffe", 560, dc_zoo)
jimmy = dc_zoo.add_animal("Jimmy", "Giraffe", 560, dc_zoo)
judy= dc_zoo.add_animal("Judy", "Elephant", 10000, dc_zoo)

binding.pry
puts "done"
