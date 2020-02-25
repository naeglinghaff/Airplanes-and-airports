require './lib/weather'

class Airport

  DEFAULT_VALUE = 5
  attr_reader :capacity
  attr_reader :weather

  def initialize(capacity = DEFAULT_VALUE, weather: Weather.new)
    @capacity = capacity
    @no_of_planes = 0
    @weather = weather
  end

# lands planes
  def land(plane)
    fail "The airport is full" if @capacity == @no_of_planes

    fail "Bad weather, no landing" if @weather == true

    @no_of_planes += 1
  end

# lets planes take off
  def take_off(plane)
    fail "Bad weather, no taking off" if @weather == true

    @no_of_planes -= 1
  end

# checks to see if there are planes in the airport
  def empty?
    true
  end

# # finds out if it is stormy
#   def stormy?
#     @stormy = rand(3) == 1
#   end
end