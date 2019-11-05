require_relative 'Animal'
class Zoo
    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|a| a.zoo == self}
    end

    def animal_species
        arr = []
        Animal.all.select {|a| arr << a.species if a.zoo == self}
        arr.uniq.join(",")
        # binding.pry
        # arr[species].uniq
    end

    def animal_nicknames
        arr = []
        Animal.all.select {|a| arr << a.nickname if a.zoo == self}
        arr
    end

    def self.find_by_location(location)
        @@all.select {|z| z.location == location}
    end
end
