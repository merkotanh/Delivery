require_relative 'transport'

class Bike < Transport
  attr_accessor :distance

  def initialize(weight = 10, speed = 10, available = true, distance = 30)
    super(weight, speed, available, distance)
    # @distance = distance = 30
  end

end
