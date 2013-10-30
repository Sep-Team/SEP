json.array!(@centros) do |centro|
  json.extract! centro, :codigo, :nombre, :direccion
  json.url centro_url(centro, format: :json)
end
