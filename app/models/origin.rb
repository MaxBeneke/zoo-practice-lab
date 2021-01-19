

# An `Origin` should be initialized with a `continent` and a `country`, which should both be passed as strings.
# - `Origin#country` should return the country for the origin instance.
# - `Origin#continent` should return the name of continent for the origin instance.
# - `Origin.all` should return an array of all the origin instances.
# - `Origin#animals` should return all the animals that a specific instance of an origin has.
# - `Origin#zoos` should return all the zoos that hold animals of this specific origin.
# - `Origin#animal_number` should return an integer that indicates the number of different animal instances an origin has in total.
# - `Origin.find_by_continent` should take in a string of a continent as an argument and return an array of all the countries within that continent.
# - `Origin.most_animals` should return an instance of an origin that in general has the most animals.
​



class Origin
attr_reader :continent, :country

@@all = []

def initialize(continent, country)
    @continent = continent
    @country = country
    @@all << self 
end

def self.all
    @@all
end

def animals 
    Animal.all.select{|animal|animal.origin == self}
end

def zoos
    self.animals.map{|animal|animal.zoo}
end

def animal_number
end



end
