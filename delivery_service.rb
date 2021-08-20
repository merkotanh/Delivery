class DeliveryService
  attr_accessor :cars_count, :bikes_count, :auto_park, :bike_park

  require_relative 'car'
  require_relative 'bike'
  require_relative 'constants'

  def initialize(cars_count = 6, bikes_count = 8)
    @auto_park = []
    # @bike_park = []
    cars_count.times do
      @auto_park << Car.new
    end
    bikes_count.times do
      @auto_park << Bike.new
    end
  end

  def find_transport
    free_trans =  @auto_park.find { |a| a.is_bike? && a.available == true }
    free_trans ||= @auto_park.find { |a| a.available == true }
    output free_trans
  end

  def output(t)
    p "#{t.is_a?(Car) ? 'Car' : 'Bike'} is ready for delivery. Delivery time is approx #{t.delivery_time} minutes"
  end

end

d =  DeliveryService.new
d.find_transport
