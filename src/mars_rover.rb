# frozen_string_literal: true

class MarsRover
  def initialize
  end

  def move(command)
    forward = command.count("M")

    if (command.count("M") >= 10)
      forward = command.count("M") % 10
    end

    if (command.include?("R") && command.include?("M") )
      x = command.count("R")
      direction = right_rotation(command.count("R"))
      return "#{x}:#{forward}:#{direction}"
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
    index = command % 4
    direction = {
      1 => "E",
      2 => "S",
      3 => "W",
      4 => "N",
    }

    direction[index]
  end

  def left_rotation(command)
    index = command % 4
    direction = {
      1 => "W",
      2 => "S",
      3 => "E",
      4 => "N",
    }

    direction[index]
  end
end

