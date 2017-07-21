class Vehicle < ApplicationRecord
  # This class needs one or more permits, and an employee registration number.
  # There is a method that will test to see whether this vehicle has the "staff" permit, which we will use later when parking the vehicle.

    def initialize(registration_number)
      @registration_number = registration_number
      @permits = []
    end

    def is_staff?
      @permits.any? {|p| p == VehiclePermit.staff }
    end

    def permits
      @permits
    end

    def registration_number
      @registration_number
    end
  end
end
