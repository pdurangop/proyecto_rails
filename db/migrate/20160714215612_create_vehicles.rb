class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :vin
      t.string :year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
