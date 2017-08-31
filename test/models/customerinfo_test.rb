# require 'test_helper'
#
# class CustomerinfoTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
#   begin
#     # Our parking lot as 10 unrestricted spaces and 5 handicapped spaces
#     parking_lot = ParkingLot.new 10, 5
#
#     # Create two vehicles, one of each type.
#     unrestricted_vehicle = Vehicle.new "1"
#     handicapped_vehicle = Vehicle.new "2"
#     handicapped_vehicle.permits << VehiclePermit.handicapped
#
#     # Park the cars
#     parking_lot.park unrestricted_vehicle
#     parking_lot.park handicapped_vehicle
#
#     # Let's do some shopping.
#     sleep 3.hours
#
#     # Time to check out.
#     unrestricted_payment = parking_lot.payment_for unrestricted_vehicle
#     handicapped_payment parking_lot.payment_for handicapped_vehicle
#
#     # 20 * 3 hours should be 60. Opps! This could be a problem later
#     unrestricted_payment.pay 55
#
#     # 5 * 3 hours = 15
#     handicapped_payment.pay 15
#
#     # I guess we went to the ATM. Whew!
#     unrestricted_payment.pay 5 unless unrestricted_payment.paid?
#
#     # Now let's exit the parking lot. Time to go home.
#     unrestricted_space = parking_lot.exit unrestricted_vehicle, unrestricted_payment
#     puts unrestricted_space.occupied? # -> "false"
#
#     handicapped_space = parking_lot.exit handicapped_vehicle, handicapped_payment
#     puts handicapped_space.occupied? # -> "false"
#   rescue ParkingSpaceError => parking_error
#     puts "Oops! Had a problem parking a car: #{parking_error}"
#   else Exception => e
#     raise e # A non parking error occurred.
#   end
# end
