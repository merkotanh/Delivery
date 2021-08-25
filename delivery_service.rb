class DeliveryService
  attr_accessor :cars_count, :bikes_count, :auto_park

  require_relative 'car'
  require_relative 'bike'
  require_relative 'constants'

  def initialize(cars_count, bikes_count)
    @cars_count ||= Constants::DEFAULT_CARS_COUNT
    @bikes_count ||= Constants::DEFAULT_BIKES_COUNT
    @auto_park = []

    cars_count.times do
      @auto_park << Car.new
    end

    bikes_count.times do
      @auto_park << Bike.new
    end

    @auto_park.sort_by! { |a| a.speed }
  end

  def find_transport(distance, weight)
    transport = find_fitting_transport distance, weight

    unless transport.nil?
      p "#{transport.class.name} is ready for delivery. Delivery time is approx #{transport.delivery_time(distance)} minutes"
      transport.start_delivering
    else
      p 'No free transport'
    end

  end

  private

  def find_fitting_transport(distance, weight)
    @auto_park.find { |a| a.available && a.distance >= distance && a.weight >= weight}
  end

end

d =  DeliveryService.new 3, 6
d.find_transport 10, 3
