json.array!(@tipodocs) do |tipodoc|
  json.extract! tipodoc, :descripcion, :sigla
  json.url tipodoc_url(tipodoc, format: :json)
end
