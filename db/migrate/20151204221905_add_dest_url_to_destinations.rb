class AddDestUrlToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :dest_url, :string
  end
end
