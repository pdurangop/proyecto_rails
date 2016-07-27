class RenameLocationLocationLatitudeToLatitude < ActiveRecord::Migration[5.0]
  def change
    rename_column :Locations, :location_latitude, :latitude
  end
end
