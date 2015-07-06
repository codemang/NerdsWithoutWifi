json.array!(@trips) do |trip|
  json.extract! trip, :id, :title
  json.url trip_url(trip, format: :json)
end
