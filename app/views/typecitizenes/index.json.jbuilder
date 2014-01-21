json.array!(@typecitizenes) do |typecitizen|
  json.extract! typecitizen, :name, :acronym
  json.url typecitizen_url(typecitizen, format: :json)
end
