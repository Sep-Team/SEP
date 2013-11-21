json.array!(@detalle_evaluaciones) do |detalle_evaluacion|
  json.extract! detalle_evaluacion, :evaluacion_id, :factor_id, :nota, :observaciones
  json.url detalle_evaluacion_url(detalle_evaluacion, format: :json)
end
