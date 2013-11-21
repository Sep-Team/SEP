json.array!(@evaluaciones) do |evaluacion|
  json.extract! evaluacion, :estudiante_id, :jefe_id, :fecha_inicio, :fecha_fin, :fecha_evaluacion, :aspectos_positivos, :aspectos_negativos
  json.url evaluacion_url(evaluacion, format: :json)
end
