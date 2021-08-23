require_relative 'transport'

class Car < Transport
  attr_accessor :number

  def initialize(weight = 100, speed = 50, available = true, distance = 400)
    super(weight, speed, available, distance)
    @number = number = "#{rand(9999)}AR"
  end

end
