require './lib/airport'

class Weather

  def stormy?
    random_weather == :it_stormy
  end

  private

  OPTIONS = [:stormy, :sunny, :sunny, :sunny]

  def random_weather
    OPTIONS.sample
  end
end
