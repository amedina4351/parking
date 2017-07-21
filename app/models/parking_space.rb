class ParkingSpace < ApplicationRecord

  # The ParkingSpace class holds a vehicle, the date and time the vehicle parked, and the fee associated with it.
  # It allows you to calculate the payment as well.
  # As a user, I want to 1: Park a car
  # 2: Vacate the space
  # 3: Calculate the fee
  # 4: Test to see if a vehicle is currently occupying it
  # 5: Test to see if it contains a particular vehicle
  # 6: Test a vehicle to see if it can park here

    def initialize(parking_lot, fee, number)
      @parking_lot = parking_lot
      @fee = fee
      @number = number
    end

    def payment
      ParkingSpacePayment.new self
    end

    def can_park?(vehicle)
      !occupied?
    end

    def contains?(vehicle)
      self.vehicle == vehicle
    end

    def number
      @number
    end

    def occupied?
      !vehicle.nil?
    end

    def park(vehicle)
      raise ParkingSpaceError "Cannot park vehicle #{vehicle.registration_number}" unless can_park? vehicle
      self.vehicle = vehicle
      date_occupied = DateTime.current
    end

    def vacate
      payment = nil
      date_occupied = nil
      vehicle = nil
    end

    def vehicle
      @vehicle
    end

  private

    def payment=(new_payment)
      @payment = new_payment
    end

    def calculate_fee(date)
      fee.calculate(date)
    end

    def vehicle=(new_vehicle)
      @vehicle = new_vehicle
    end
  end
