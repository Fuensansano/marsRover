# frozen_string_literal: true

class MarsRover
  def initialize
  end

  def move(command)
    forward = command.count("M")

    if (command.include?("R") && command.include?("M") )
      y = command.count("M")
      x = command.count("R")
      direction = right_rotation(command.count("R"))
      return "#{x}:#{y}:#{direction}"
    end

    if command.include?("R")
      direction = right_rotation(command.count("R"))
      return "0:#{forward}:#{direction}"
    end

    if command.include?("L")
      direction = left_rotation(command.count("L"))
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

  def left_rotation(command)
    direction = {
      1 => "W",
      2 => "S",
      3 => "E",
      4 => "N",
    }

    direction[command]
  end
end

