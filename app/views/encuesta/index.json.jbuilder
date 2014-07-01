json.array!(@encuesta) do |encuestum|
  json.extract! encuestum, :id, :direccion, :telefono, :tipo_vivienda, :estrato, :servicios, :tipo_servicios, :habitaciones, :piso_vivienda, :paredes_vivienda, :basuras
  json.url encuestum_url(encuestum, format: :json)
end
