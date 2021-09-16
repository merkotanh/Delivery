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
    p "#{self.class.name} is ready for delivery. Delivery time is approx #{self.delivery_time(distance)} minutes"
  end

  def <=>(other)
    w = self.weight <=> other.weight
    w == 0 ? self.distance <=> other.distance : w
  end

end
