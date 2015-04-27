json.array!(@bedsitters) do |bedsitter|
  json.extract! bedsitter, :id, :type, :street, :residence
  json.url bedsitter_url(bedsitter, format: :json)
end
