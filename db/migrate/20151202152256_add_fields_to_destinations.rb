class AddFieldsToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :city, :string
    add_column :destinations, :state, :string
    add_column :destinations, :country, :string
    add_column :destinations, :address, :string
    add_column :destinations, :latitude, :float
    add_column :destinations, :longitude, :float
  end
end
