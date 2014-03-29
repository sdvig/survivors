json.array!(@survivors) do |survivor|
  json.extract! survivor, :id, :name, :picture
  json.url survivor_url(survivor, format: :json)
end
