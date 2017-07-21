class CreateUnrestrictedParkingSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :unrestricted_parking_spaces do |t|

      t.timestamps
    end
  end
end
