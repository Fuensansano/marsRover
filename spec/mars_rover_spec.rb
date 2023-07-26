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

  it 'knows its landing position with a command RM' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("RM")).to eq("1:1:E")
  end

  it 'knows its landing position with a command RMM' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("RMM")).to eq("1:2:E")
  end

  it 'knows its landing position with a command RRRRR' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("RRRRR")).to eq("0:0:E")
  end

  it 'knows its landing position with a command RRRRRR' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("RRRRRR")).to eq("0:0:S")
  end

  it 'knows its landing position with a command LLLLL' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("LLLLL")).to eq("0:0:W")
  end

  it 'knows its landing position with a command LLLLLL' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("LLLLLL")).to eq("0:0:S")
  end

  it 'can not pass the limit' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("MMMMMMMMMMM")).to eq("0:1:N")
  end

  it 'can not pass the limit with 19 M command' do
    mars_rover = MarsRover.new

    expect(mars_rover.move("MMMMMMMMMMMMMMMMMMM")).to eq("0:9:N")
  end
end