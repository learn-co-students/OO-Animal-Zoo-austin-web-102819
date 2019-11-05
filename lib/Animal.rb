require_relative 'Zoo'
class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []
    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname

        @@all << self
    end

    # def zoo
    #     Zoo.all
    # end

    def self.all
        @@all
    end

    def self.animal_find_by_species(species)
        @@all.select {|a| a.species == species}
    end
end
