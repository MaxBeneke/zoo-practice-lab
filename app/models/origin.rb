

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
    self.animals.length
end

def self.find_by_continent(continent)
    all_continents = self.all.select{|origin| origin.continent == continent}

    all_continents.map{|origin| origin.country}.uniq
end

def self.most_animals
    a = self.all.map{|origin| origin.animal_number}

    self.all[a.index(a.max)]
end

end
