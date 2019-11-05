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
    def animal 
        Animal.all.select {|anim| anim.zoo == self}
    end
    def animal_species
        Animal.all.select {|anim| anim.species}.uniq
    end
    def find_by_species(species)
        Animal.all.select {|anim| anim.species == species}
    end
    def animal_nicknames
        animal = self.animal
        animal.select {|anim| anim.name}
    end
    def self.find_by_location(location)
        @@all.select {|zoo| zoo.location == location}
    end
end
