require_relative 'constants'

class Transport
  attr_accessor :weight, :speed, :available, :distance, :time, :location, :number_of_deliveries, :delivery_cost

  def initialize(weight, speed, available, distance = nil, time = nil, location, number_of_deliveries, delivery_cost)
    @weight = weight
    @speed = speed
    @available = available
    @distance = distance
    @location = location
    @number_of_deliveries = number_of_deliveries
    @delivery_cost = delivery_cost
  end

  def find_by_weight(weight)
    self.weight == weight ? self : false
  end

  def find_by_speed(speed)
    self.speed == speed ? self : false
  end

  def find_by_available(available)
    self.available ? self : false
  end

  def find_by_location(location)
    self.location == location ? self : false
  end

  def find_by_cost(cost)
    self.delivery_cost == cost ? self : false
  end

  def find_by(attribute, attr)
    self.send(attribute) == attr ? self : false
  end

  def filter_by_speed(speed)
    # still trying to realize it
  end

  def delivery_time(distance)
    distance * self.speed
  end

  def start_delivering
    self.available = false
    raise "#{self.class.name} is ready for delivery. Delivery time is approx #{self.delivery_time(distance)} minutes"
  end

  def <=>(other)
    w = self.weight <=> other.weight
    w == 0 ? self.distance <=> other.distance : w
  end

end
