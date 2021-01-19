# A `Zoo` should be initialized with a name and address, which should be in passed as string. Keep in mind that the Zoo's name should be able to change, but its address cannot.
# - `Zoo#name` should return the name of the zoo instance. 
# - `Zoo#address` should return the address of the zoo instance.
# - `Zoo.all` should return an array of all the zoo instances.
# - `Zoo#all_animals` should return all the animals that a specific instance of a zoo has.
# - `Zoo#all_animal_species` should return an array of the unique animal species that a specific instance of a zoo has.
# - `Zoo.find_by_name` should take in an argument of a string of a name and return an instance of the zoo.
# `Zoo#origins` should return all the unique animal origins that a specific instance of a zoo has.
# ​
# There are no `rspec` files, so it's up to you to test your code within the `console.rb` file.




class Zoo

    attr_reader :name, :address

   @@all = []


    def initialize (name, address)
        @name= name
        @address= address


        @@all << self 
    end


    def self.all
        @@all
    end
 
    def all_animals
        
        Animal.all.select{|animal| animal.zoo == self}
    end

    def all_animal_species


        self.all_animals.map{|animal|animal.species}.uniq
    end
    


end