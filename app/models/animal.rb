# - An `Animal` should be instantiated with the species (e.g. "Lion", "Koala", "Lynx") and name (e.g. "Mufasa", "Simba", "Fluffy"). 
# - `Animal#zoo` should return the zoo instance that the animal can be found in.
# - `Animal#origin` should return the origin instance that the animal can be found in.
# - `Animal#species` should return the species of the animal.
# - `Animal#name` should return the name of the animal.
# - `Animal.all` should return an array of all the animal instances.





class Animal

    attr_reader :species, :name, :origin, :zoo

    @@all = []

    def initialize (species,name, zoo, origin)
        @species= species
        @name= name
        @zoo= zoo
        @origin= origin
       
        @@all << self


    end

    def self.all
      @@all
    end

end
