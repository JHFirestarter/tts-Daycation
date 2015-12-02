class AddFieldToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :dest_type, :string
  end
end
