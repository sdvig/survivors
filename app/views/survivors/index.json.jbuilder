json.array!(@survivors) do |survivor|
  json.extract! survivor, :id, :name
  json.url survivor_url(survivor, format: :json)
end
