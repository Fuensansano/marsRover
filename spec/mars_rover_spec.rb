require_relative '../src/mars_rover'


describe 'mars rovers' do

  [
    ["", "0:0:N"],
    ["M", '0:1:N'],
    ["MMM", '0:3:N'],
    ["R", '0:0:E'],
    ["RR", '0:0:S'],
    ["RRR", '0:0:W'],
    ["RRRR", '0:0:N'],
    ["L", '0:0:W'],
    ["LL", '0:0:S'],
    ["LLL", '0:0:E'],
    ["LLLL", '0:0:N'],
    ["RM", '0:1:E'],
    ["RMM", '0:2:E'],
    ["RRRRR", '0:0:E'],
    ["RRRRRR", '0:0:S'],
    ["LLLLL", '0:0:W'],
    ["LLLLLL", '0:0:S'],

  ].each do |command, coordinate|
    it "given #{command} then return #{coordinate}" do
      mars_rover = MarsRover.new

      expect(mars_rover.move(command)).to eq(coordinate)
    end
  end

  context 'limit' do
    it 'can not pass the limit' do
      mars_rover = MarsRover.new

      expect(mars_rover.move("MMMMMMMMMMM")).to eq("0:1:N")
    end

    it 'can not pass the limit with 19 M command' do
      mars_rover = MarsRover.new

      expect(mars_rover.move("MMMMMMMMMMMMMMMMMMM")).to eq("0:9:N")
    end
  end

end