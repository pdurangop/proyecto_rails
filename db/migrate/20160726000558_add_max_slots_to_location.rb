class AddMaxSlotsToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :max_slots, :integer
  end
end
