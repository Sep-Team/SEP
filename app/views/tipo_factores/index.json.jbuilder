json.array!(@tipo_factores) do |tipo_factor|
  json.extract! tipo_factor, :nombre, :sigla
  json.url tipo_factor_url(tipo_factor, format: :json)
end
