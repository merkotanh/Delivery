require_relative 'transport'
require_relative 'constants'

class Bike < Transport
  attr_accessor :distance

  def initialize(
    weight = Constants::BIKE_MAX_WEIGHT,
    speed = Constants::BIKE_MAX_SPEED,
    available = true,
    distance = Constants::BIKE_MAX_DISTANCE
  )
    super
  end

end
