require 'airport'
require 'weather'

describe Weather do

  before(:each) do
    @airport = Airport.new
    @weather = @airport.weather
    @plane = Plane.new
  end

context 'creating sunny weather' do
  it 'lets sunny weather exist' do
   expect(@weather).to eq false
  end
end

context 'creating stormy weather' do
  it 'lets stormy weather be observed' do
    expect(@weather).to be_stormy
  end
end

# context 'weather affecting landing' do
#   it 'blocks landing' do
#     allow(@weather).to receive(:stormy?).and_return(true)
#     allow(@airport).to receive(:land).and_return("Bad weather, no landing")
#   end
#   it 'blocks taking off' do
#     allow(@obj).to receive(:stormy?).and_return(true)
#     allow(@obj).to receive(:take_off).and_return("Bad weather, no taking off")
#   end
# end

end
