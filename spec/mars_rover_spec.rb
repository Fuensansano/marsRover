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

  it 'knows its landing position with a command MMM' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("MMM")).to eq("0:3:N")
  end

  it 'knows its landing position with a command R' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("R")).to eq("0:0:E")
  end

  it 'knows its landing position with a command RR' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("RR")).to eq("0:0:S")
  end

  it 'knows its landing position with a command RRR' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("RRR")).to eq("0:0:W")
  end

  it 'knows its landing position with a command L' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("L")).to eq("0:0:W")
  end

  it 'knows its landing position with a command LL' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("LL")).to eq("0:0:S")
  end

  it 'knows its landing position with a command LLL' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("LLL")).to eq("0:0:E")
  end
end