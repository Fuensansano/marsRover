# frozen_string_literal: true

class MarsRover
  def initialize
  end

  def move(command)
    forward = command.count("M")

    if command.include?("R")
      direction = right_rotation(command.count("R"))
      return "0:#{forward}:#{direction}"
    end

    "0:#{forward}:N"

  end

  def right_rotation(command)
    direction = {
      1 => "E",
      2 => "S",
      3 => "W",
      4 => "N",
    }

    direction[command]
  end
end

