require 'airport'
require 'weather'

describe Weather do

  before(:each) do
    @airport = Airport.new
    @weather = @airport.weather
    @plane = Plane.new
  end



end
