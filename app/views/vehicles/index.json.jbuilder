json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :make, :vehicle_model, :year, :color, :cost, :markup
  json.url vehicle_url(vehicle, format: :json)
end
