class CreateStaffParkingSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :staff_parking_spaces do |t|

      t.timestamps
    end
  end
end
