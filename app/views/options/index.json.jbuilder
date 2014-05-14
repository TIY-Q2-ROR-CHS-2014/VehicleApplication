json.array!(@options) do |option|
  json.extract! option, :id, :option_type, :name, :cost, :markup
  json.url option_url(option, format: :json)
end
