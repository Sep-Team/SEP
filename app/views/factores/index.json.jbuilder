json.array!(@factores) do |factor|
  json.extract! factor, :area_id, :tipofactor_id, :descripcion
  json.url factor_url(factor, format: :json)
end
