# frozen_string_literal: true

class MarsRover
  def initialize
  end

  def move(command)
    forward = command.count("M")
    "0:#{forward}:N"
  end
end

