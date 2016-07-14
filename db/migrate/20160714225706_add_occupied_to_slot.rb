class AddOccupiedToSlot < ActiveRecord::Migration[5.0]
  def change
    add_column :slots, :occupied, :boolean
  end
end
