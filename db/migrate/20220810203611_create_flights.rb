class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :origin, null: false
      t.string :destination, null: false
      t.string :flight_number, null: false
      t.datetime :flight_date, null: false

      t.timestamps
    end
  end
end
