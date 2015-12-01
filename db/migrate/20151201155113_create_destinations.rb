class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :type
      t.text :description
      t.text :characteristics
      t.integer :travel_cost
      t.integer :travel_time
      t.integer :distance
      t.integer :dest_cost
      t.integer :location
      t.string :image

      t.timestamps null: false
    end
  end
end
