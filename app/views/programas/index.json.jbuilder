json.array!(@programas) do |programa|
  json.extract! programa, :nombre, :version, :codigo, :centro_id, :titulacion_id
  json.url programa_url(programa, format: :json)
end
