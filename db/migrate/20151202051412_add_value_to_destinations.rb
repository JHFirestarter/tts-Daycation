class AddValueToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :origin, :string
  end
end
