require_relative 'constants'

class Transport
  attr_accessor :weight, :speed, :available, :distance, :time

  def initialize(weight, speed, available, distance = nil, time = nil)
    @weight = weight
    @speed = speed
    @available = available
    @distance = distance
  end

  def delivery_time(distance)
    distance * self.speed
  end

  def start_delivering
    self.available = false
    raise "#{self.class.name} is ready for delivery. Delivery time is approx #{self.delivery_time(distance)} minutes"
  end

  def <=>(other)
    self.speed / self.weight <=> other.speed / other.weight
  end

end
