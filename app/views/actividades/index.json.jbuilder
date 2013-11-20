json.array!(@actividades) do |actividad|
  json.extract! actividad, :fecha_inicio, :fecha_fin, :descripcion, :categoria_id, :objsyproy_id, :estudiante_id, :actEstado_id
  json.url actividad_url(actividad, format: :json)
end
