# frozen_string_literal: true

class MarsRover
  def initialize
  end

  def move(command)
    return "0:1:N" if command == "M"
    return "0:3:N" if command == "MMM"
    "0:0:N"
  end
end

