class RenameLocationLocationLongitudeToLongitude < ActiveRecord::Migration[5.0]
  def change
    rename_column :Locations, :location_longitude, :longitude
  end
end
