class CreateVehiclePermits < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_permits do |t|

      t.timestamps
    end
  end
end
