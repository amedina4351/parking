class CreateParkingFees < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_fees do |t|

      t.timestamps
    end
  end
end
