class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :distance
      t.integer :amount
      t.boolean :tip
      t.string :date
      t.integer :rider_id
      t.integer :driver_id
    end
  end
end
