# pseudocode
# - define class City_creator
# - add initialize method with attributes for @name, @population, @country. These attributes should exist as an array value for the hash containing all city keys.
# - add method that lists cities alphabetically
#   -use .SORT to arrange array alphabetically, no input needed
# - add method that adds city to list of cities
# - input is new city, use << to put city into cities hash with a default array of [0,0,0].

class City_creator

  attr_reader :name, :population, :continent
  attr_accessor :attractions

  def initialize(name)
    continents = ["Asia", "North America", "South America", "Oceania", "Africa", "Europe", "Antarctica"]
    @name = name
    @population = rand(1...100) * 100000
    @continent = continents[rand(0...6)]
    @attractions = nil
  end

  def reduce_population
    @population = population/2
  end

end

all_cities = []


# driver code
all_cities << City_creator.new("Milwaukee")
all_cities << City_creator.new("Santa Fe")
p all_cities

all_cities[0].attractions = "All sorts!"
all_cities[0].reduce_population
p all_cities

