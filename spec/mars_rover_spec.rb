require_relative '../src/mars_rover'


describe 'mars rovers' do
  it 'knows its landing position' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("")).to eq("0:0:N")
  end
end