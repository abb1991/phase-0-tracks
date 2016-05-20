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
    @attractions = "no"
  end

  def reduce_population
    @population = population/2
  end

  def city_info
    puts "#{@name}, a city of #{@population} is located in #{@continent}, and has #{@attractions} attractions."
  end

  def end_city_info
    puts "name: #{@name}"
    puts "population: #{@population}"
    puts "continent: #{@continent}"
    puts "attractions: #{@attractions}"
    puts " "
  end
end

all_cities = []


# driver code
# p milwaukee = City_creator.new("Milwaukee")
# p santa_fe = City_creator.new("Santa Fe")

# santa_fe.attractions = "hiking"

# p milwaukee.reduce_population
# p santa_fe.city_info


# user interface

all_cities = []

begin
puts "Please enter the name of the city you'd like to create:"
city_name = gets.chomp

new_city = City_creator.new(city_name)

puts "What attractions are in your city?"
city_attractions = gets.chomp
new_city.attractions = city_attractions

puts "Here is your newly created city!"
p new_city.city_info

puts "Would you like to make another city? (y/n)"
continue = gets.chomp.downcase
all_cities.push(new_city)
end until continue[0] == "n"

puts "Enjoy all your new cities!"
all_cities.each do |city|
  p city.end_city_info
end
