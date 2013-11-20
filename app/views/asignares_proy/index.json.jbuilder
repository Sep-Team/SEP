json.array!(@asignares_proy) do |asignar_proy|
  json.extract! asignar_proy, :estudiante_id, :objsyproy_id
  json.url asignar_proy_url(asignar_proy, format: :json)
end
