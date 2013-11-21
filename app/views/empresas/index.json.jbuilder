json.array!(@empresas) do |empresa|
  json.extract! empresa, :nombre, :nit, :dv, :direccion, :telefono, :fax, :email, :paginaweb
  json.url empresa_url(empresa, format: :json)
end
