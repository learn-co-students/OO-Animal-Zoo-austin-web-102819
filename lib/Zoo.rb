class Zoo
    attr_accessor :name
    attr_reader :location

    @@all_zoos= []
    def initialize(name, location)
        @name=name
        @location= location
        @@all_zoos << self

    end

    def add_animal(nickname,species, weight, zoo) #is this correct!? Does an animal need to keep track of the zoo or the other way around?
        Animal.new(nickname, species, weight, self)
        
    end

    def self.all
        @@all_zoos
    end

    def animals
        Animal.all.select {|animals|animals.zoo == self}
    end

    def animal_species
        animals.map{ |animal| animal.species}
    end

    def animal_nicknames
        animals.map {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.select {|zoos| zoos.location == location}
    end

end
