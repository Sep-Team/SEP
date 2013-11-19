json.array!(@departamentos) do |departamento|
  json.extract! departamento, :nombre, :descripcion
  json.url departamento_url(departamento, format: :json)
end
