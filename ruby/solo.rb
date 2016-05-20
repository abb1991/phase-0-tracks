# pseudocode
# - define class City_creator
# - add initialize method with attributes for @name, @population, @country. These attributes should exist as an array value for the hash containing all city keys.
# - add method that lists cities alphabetically
#   -use .SORT to arrange array alphabetically, no input needed
# - add method that adds city to list of cities
# - input is new city, use << to put city into cities hash with a default array of [0,0,0].

class City_creator

  attr_reader :name
  attr_accessor :population, :country

  def initialize(name)
    continents = ["Asia", "North America", "South America", "Oceania", "Africa", "Europe", "Antarctica"]
    @name = name
    @population = rand(1...100) * 100000
    @continent = continents[rand(0...6)]
  end

  def add_population(population)
    @population = population
  end

  def add_country(country)
    @country = country
  end

end

all_cities = []

all_cities = City_creator.new("Milwaukee")
# all_cities.add_population("600,000")

p all_cities