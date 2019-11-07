class Animal
    attr_accessor :weight, :zoo
    attr_reader :nickname, :species

    @@all_animals=[]
    def initialize(nickname, species, weight, zoo)
        @nickname= nickname
        @species= species
        @weight=weight
        @zoo=zoo

        @@all_animals << self
    end

    def self.all
        @@all_animals
    end

    def find_nickname # NEED HELP WITH THIS ONE -- > returns:  [  ]
       self.nickname
    end

    def weights # NEED HELP WITH THIS ONE TOO
        self.weight
    end

    def zoo_name ### SAME
        self.zoo.name
    end


    def self.find_by_species(species)
        Animal.all.select {|animal| animal.species == species}
    end

end
