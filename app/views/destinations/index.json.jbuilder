json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :type, :description, :characteristics, :travel_cost, :travel_time, :distance, :dest_cost, :location, :image
  json.url destination_url(destination, format: :json)
end
