class CreateParkingSpacePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_space_payments do |t|

      t.timestamps
    end
  end
end
