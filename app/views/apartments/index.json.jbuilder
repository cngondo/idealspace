json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :type, :street, :residence
  json.url apartment_url(apartment, format: :json)
end
