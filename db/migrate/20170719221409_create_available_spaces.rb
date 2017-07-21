class CreateAvailableSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :available_spaces do |t|

      t.timestamps
    end
  end
end
