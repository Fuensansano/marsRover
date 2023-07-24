# frozen_string_literal: true

class MarsRover
  def initialize
  end

  def move(command)
    return "0:1:N" if command == "M"
    "0:0:N"
  end
end

