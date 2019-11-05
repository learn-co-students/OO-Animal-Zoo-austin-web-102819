class Animal
    attr_accessor :weight, :zoo
    attr_reader :name, :species
    @@all = []
    def initialize(species, weight, name)
        @species = species
        @weight = weight
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def self.find_by_species(species)
        @@all.select {|anim| anim.species == species}
    end
end
