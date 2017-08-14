# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# it requires file information from an file adjacent to current file
#
require_relative 'state_data'

class VirusPredictor
# Initialize creates different instance for every state
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Virus_effects its showing predicting deaths and speed of spread.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
  #Method takes 3 variables from state data's hash. Then it runs if, elsif and else statements of how many people are killed by the disease by rounding up the interger.
  #The data is printed in readable format
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #This method takes only 2 variables, as well an if/ elsif to see how fast the disease spreads.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end
  #This method has to be outside of the the class so that all the data has a method instead of having an instance for every state.

  def state_report
  STATE_DATA.each do |states, population_density, population|
  states = VirusPredictor.new(states, STATE_DATA[states][:population_density], STATE_DATA[states][:population])
  states.virus_effects
  end
end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
#iterate throught the state_data hash, replace 4 states and do all 50.

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

state_report
#=======================================================================
# Reflection Section

# What two different hash syntaxes are in the state_data?
# Could a rocket to set a key?
# How do you iterate through a hash?