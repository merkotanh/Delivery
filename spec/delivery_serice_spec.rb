
describe DeliveryService do

  describe "find_transport" do
    context "given 100, 50, Car" do
      it "returns " do
        expect(DeliveryService.find_transport(100, 50, 'Car')).to eql("Car is ready for delivery. Delivery time is approx 100000 minutes")
      end
    end

  end
end