require_relative 'transport'
require_relative 'constants'

class Car < Transport
  attr_accessor :number


  def initialize(
    weight = Constants::CAR_MAX_WEIGHT,
    speed = Constants::CAR_MAX_SPEED,
    available = true,
    distance = Constants::CAR_DEFAULT_DISTANCE
  )
    @number = "#{rand(9999)}AR"
    super
  end

end
