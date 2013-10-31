json.array!(@actestados) do |actestado|
  json.extract! actestado, :nombre, :descripcion
  json.url actestado_url(actestado, format: :json)
end
