json.array!(@fichas) do |ficha|
  json.extract! ficha, :numero, :fecha_inicio_practicas, :fecha_fin_practicas, :programa_id
  json.url ficha_url(ficha, format: :json)
end
