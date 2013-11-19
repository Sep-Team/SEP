json.array!(@categorias) do |categoria|
  json.extract! categoria, :nombre, :descripcion
  json.url categoria_url(categoria, format: :json)
end
