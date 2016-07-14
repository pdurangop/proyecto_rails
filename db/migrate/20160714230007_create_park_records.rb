class CreateParkRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :park_records do |t|
      t.references :vehicle, foreign_key: true
      t.references :slot, foreign_key: true
      t.datetime :date_details
      t.string :comments

      t.timestamps
    end
  end
end
