require_relative 'transport'
require_relative 'constants'

class Bike < Transport
  attr_accessor :distance

  @all = []

  def initialize
    @weight = Constants::BIKE_MAX_WEIGHT
    @speed = Constants::BIKE_MAX_SPEED
    @available = true
    @distance = Constants::BIKE_MAX_DISTANCE
    Bike.all << self
  end

  def self.all
    @all
  end

  def all
    self.class.all
  end

end
