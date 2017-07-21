class ParkingFee < ApplicationRecord

  def self.unrestricted
    @@unrestricted ||= ParkingFee.new 20
  end

  def self.staff
    @@staff ||= ParkingFee.new 5
  end

  def initialize(rate)
    @rate = rate;
  end

  def calculate(hours)
    rate * hours
  end

  def rate
    @rate
  end
end
