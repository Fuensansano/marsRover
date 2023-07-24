# frozen_string_literal: true

class MarsRover
  def initialize
  end

  def move(command)
    forward = command.count("M")
    direction = command.count("R")
    return "0:#{forward}:E" if direction == 1
    return "0:#{forward}:S" if direction == 2
    "0:#{forward}:N"

  end
end

