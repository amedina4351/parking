class ParkingSpacePayment < ApplicationRecord
  # def initialize(parking_space)
  #   @parking_space = parking_space
  #   @payment_date = DateTime.current
  #   @total_hours = ((@payment_date - parking_space.date_occupied) / 1.hour).round
  #   @amount_due = @parking_space.calculate_fee @total_hours
  #   @amount_paid = 0
  # end
  #
  # def amount_due
  #   @amount_due
  # end
  #
  # def amount_paid
  #   @amount_paid
  # end
  #
  # def balance
  #   @amount_due - @amount_paid
  # end
  #
  # def paid?
  #   @amount_paid <= 0
  # end
  #
  # def parking_space
  #   @parking_space
  # end
  #
  # def pay(amount)
  #   @amount_paid += amount
  #   balance
  # end
  #
  # def payment_date
  #   @payment_date
  # end
  #
  # def total_hours
  #   @total_hours
  # end
end
