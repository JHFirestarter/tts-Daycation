json.array!(@welcomes) do |welcome|
  json.extract! welcome, :id, :address, :latitude, :longitude
  json.url welcome_url(welcome, format: :json)
end
