json.array!(@clocks) do |clock|
  json.extract! clock, :id, :name, :size, :image, :cost
  json.url clock_url(clock, format: :json)
end
