class CreateCustomerinfos < ActiveRecord::Migration[5.1]
  def change
    create_table :customerinfos do |t|
      t.string :LicensePlate
      t.datetime :Leave_time
      t.string :Language
      t.float :Fee

      t.timestamps
    end
  end
end
