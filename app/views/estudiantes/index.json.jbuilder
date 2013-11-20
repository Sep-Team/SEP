json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :nombre1, :nombre2, :apellido1, :apellido2, :genero, :documento, :ficha_id, :jefe_id, :tipodoc_id
  json.url estudiante_url(estudiante, format: :json)
end
