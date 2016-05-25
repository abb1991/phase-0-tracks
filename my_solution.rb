# Virus Predictor

# I worked on this challenge [by myself, with: Alex Bills ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative you use when looking for a file in the same directory or a file in
# another directory if you put the file path in. Requrie first looks at core ruby libraries
#(ie modules and gems).

require_relative 'state_data'

class VirusPredictor
  #runs immediately and it's going to set the attributes of the instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calls the predicted_deaths and speed_of_spread because the other methods are private
  #and can't be called directly
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #A conditional method that calculates and outputs the number of deaths based on the
  #instance variable @population_density for the instance
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    #defined number in original if else method as death ratio (aka .4 or .3 or .2)
    #changed the death ratio from a discrete range od numbers to a continuous funtion
    #using the equation for a line to get more accurate number of deaths
    #b = .05
    #y = @population_density
    #x = death_ration
    # m = 571
    # x = y/m - b

    death_ratio = @population_density / 571
    if death_ratio > 1
      death_ratio = 0.99
    end

    number_of_deaths = (@population * death_ratio).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #A conditional method that calculates and outputs the speed_of_spread based on the
  #instance variable @population_density for the instance
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    #changed speed var name to months
    #changed the months from a discrete range of numbers to a continuous funtion
    #using the equation for a line to get more accurate timeline

    # y = speed
    # x = @population_density
    # slope = -1/75
    # b = 2.5

    months = @population_density * (-1.0/75) + 2.5
    if months < 0
      months = 0
    end

    puts " and will spread across the state in #{months} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA.each do |state, population_info|
#   current_state = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
#   current_state.virus_effects
# end



# wash = VirusPredictor.new("Washington,D.C.", STATE_DATA["Washington,D.C."][:population_density], STATE_DATA["Washington,D.C."][:population])
# wash.virus_effects

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section