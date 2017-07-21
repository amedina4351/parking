class StaffParkingSpace < ApplicationRecord

  # This class is for staff.
    def initialize(parking_lot, number)
      super(parking_lot, ParkingFee.staff, number)
    end

    def can_park?(vehicle)
      super(vehicle) && vehicle.is_staff?
    end

end
