class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.float :location_latitude
      t.float :location_longitude
      t.string :description

      t.timestamps
    end
  end
end
