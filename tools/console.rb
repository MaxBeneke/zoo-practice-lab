require 'pry'


require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner

zoo1 = Zoo.new("Fun Zoo", "123 street")
origin1 = Origin.new("South America", "Brazil")
animal1 = Animal.new("George", "Monkey", zoo1, origin1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line