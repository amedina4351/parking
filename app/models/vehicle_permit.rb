class VehiclePermit < ApplicationRecord

  # This class determines whether a parked car is a visitor or staff.

    def self.staff
      @@staff ||= VehiclePermit.new 1, "Staff"
    end

    def initialize(id, name)
      @id = id;
      @name = name;
    end

    def id
      @id
    end

    def name
      @name
    end
  end
end
