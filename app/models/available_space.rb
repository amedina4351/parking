class AvailableSpace < ApplicationRecord
# This code is intended to track all available spaces in lot as cars enter and exit.-BJ
# As a user, I want to:
# 1: Park a vehicle
# 2: Exit the parking lot
# 3: Calculate a payment for a vehicle
# 4: Check to see if spaces are available

#   def initialize(unrestricted_count, staff_count)
#     count = 0
#     @parking_spaces = []
#
#     unrestricted_count.times do |n|
#       @parking_spaces << UnrestrictedParkingSpace.new self, n
#     end
#
#     count = @parking_spaces.count
#
#     staff_count.times do |n|
#       @parking_spaces << StaffParkingSpace.new self, count + n
#     end
#   end
#
#   def exit(vehicle, payment)
#     parking_space = parking_space_for vehicle
#     raise ParkingSpaceError "Balance not paid: #{payment.balance}" unless payment.paid?
#     parking_space.vacate vehicle
#     parking_space
#   end
#
#   def park(vehicle)
#     index = @parking_spaces.index {|space| space.can_park? vehicle }
#     raise ParkingSpaceError "No spaces available" if index < 0
#     parking_space = @parking_spaces[index]
#     parking_space.park vehicle
#     parking_space
#   end
#
#   def payment_for(vehicle)
#     parking_space_for(vehicle).payment
#   end
#
#   def spaces_available?(vehicle = nil)
#     if vehicle.nil?
#       @parking_spaces.any? {|space| !space.occupied? }
#     else
#       @parking_spaces.any? {|space| space.can_park? vehicle }
#     end
#   end
#
# private
#
#   def parking_space_for(vehicle)
#     index = @parking_spaces.index {|space| space.contains? vehicle }
#     raise ParkingSpaceError "Vehicle #{vehicle.registration_number} is not parked in this lot" if index < 0
#     @parking_spaces[index]
#   end
end
