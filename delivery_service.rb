class DeliveryService
  attr_accessor :cars_count, :bikes_count, :auto_park

  require_relative 'car'
  require_relative 'bike'
  require_relative 'constants'

  def initialize(cars_count = 6, bikes_count = 8)
    @auto_park = []
    cars_count.times do
      @auto_park << Car.new
    end
    bikes_count.times do
      @auto_park << Bike.new
    end
    @auto_park.sort_by! { |a| a.speed }
  end

  def find_transport
    free = false
    free_trans = @auto_park.find { |a| a.available == true }
    unless free_trans.nil?
        free = true
        free_trans.available = false
    end
    output free_trans, free
  end

  def output(t, free)
    if free
      p "#{t.is_a?(Car) ? 'Car' : 'Bike'} is ready for delivery. Delivery time is approx #{t.delivery_time} minutes"
    else
      p 'No free transport'
    end
  end

end

d =  DeliveryService.new
d.find_transport
