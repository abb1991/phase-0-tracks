
class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0...140)
  end

  # # setter method
  # def gender=(new_gender)
  #   @gender = new_gender
  # end
  # # getter methods
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  def celebrate_birthday
    b_day_age = @age + 1
  end

  def get_mad_at(reindeer)
    index = @reindeer_ranking.index(reindeer)
    reindeer_to_end = @reindeer_ranking.slice!(index)
    @reindeer_ranking << reindeer_to_end
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

# driver code

# santa = Santa.new("agender", "black")

# santa.gender = "BOY!"

# p santa.celebrate_birthday
# p santa.get_mad_at("Rudolph")
# p santa.age
# p santa.ethnicity

# random santa generator

random_santas = []

 10.times do
  random_santas << Santa.new(example_genders[rand(0...6)], example_ethnicities[rand(0...6)])
end

p random_santas