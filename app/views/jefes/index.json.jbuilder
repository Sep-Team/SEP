json.array!(@jefes) do |jefe|
  json.extract! jefe, :nombres, :apellidos, :cargo, :telefono, :email, :empresa_id
  json.url jefe_url(jefe, format: :json)
end
