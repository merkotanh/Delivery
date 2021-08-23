require_relative 'constants'

class Transport
  attr_accessor :weight, :speed, :available, :distance

  def initialize(weight, speed, available, distance = nil)
    @weight = weight
    @speed = speed
    @available = available
    @distance = distance
  end

  def delivery_time
    @distance * @speed
  end

  def is_bike?
    if @distance <= Constants::BIKE_MAX_DISTANCE &&
      @weight <= Constants::BIKE_MAX_WEIGHT &&
      @speed <= Constants::BIKE_MAX_SPEED
      true
    else
      false
    end
  end

end
