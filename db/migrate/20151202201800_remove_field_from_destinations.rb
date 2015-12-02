class RemoveFieldFromDestinations < ActiveRecord::Migration
  def change
    remove_column :destinations, :type, :string
  end
end
