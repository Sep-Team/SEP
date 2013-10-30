json.array!(@titulaciones) do |titulacion|
  json.extract! titulacion, :descripcion, :sigla
  json.url titulacion_url(titulacion, format: :json)
end
