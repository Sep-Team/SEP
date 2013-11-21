json.array!(@novedades) do |novedad|
  json.extract! novedad, :fecha_ocurrencia, :descripcion, :implicados, :user_id, :actEstado_id
  json.url novedad_url(novedad, format: :json)
end
