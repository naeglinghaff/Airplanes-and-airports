require './lib/airport'

class Weather

  attr_reader :weather

  def initialize
    @weather = weather
  end

  def stormy?
    @weather = random_weather == :it_stormy
  end

  private

  OPTIONS = [:stormy, :sunny, :sunny, :sunny]

  def random_weather
    OPTIONS.sample
  end
end
