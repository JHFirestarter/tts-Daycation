class RemoveFieldsFromDestinations < ActiveRecord::Migration
  def change
    remove_column :destinations, :travel_time, :integer
    remove_column :destinations, :distance, :integer
    remove_column :destinations, :location, :integer
    remove_column :destinations, :origin, :string
  end
end
