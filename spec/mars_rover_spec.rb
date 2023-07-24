require_relative '../src/mars_rover'


describe 'mars rovers' do
  it 'knows its landing position' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("")).to eq("0:0:N")
  end

  it 'knows its landing position with a command M' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("M")).to eq("0:1:N")
  end
end