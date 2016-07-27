class DropTable < ActiveRecord::Migration[5.0]
  def down
    drop_table :add_max_slots_to_locations
  end
end
