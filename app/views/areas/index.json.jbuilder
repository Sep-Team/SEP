json.array!(@areas) do |area|
  json.extract! area, :nombre, :sigla
  json.url area_url(area, format: :json)
end
