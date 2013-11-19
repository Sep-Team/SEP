json.array!(@objsyproys) do |objsyproy|
  json.extract! objsyproy, :nombre, :descripcion, :departamento_id
  json.url objsyproy_url(objsyproy, format: :json)
end
