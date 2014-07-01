class Encuestum < ActiveRecord::Base
	attr_accessible :direccion, :telefono, :tipo_vivienda, :estrato, :servicios, :tipo_servicios, :habitaciones, :piso_vivienda, :paredes_vivienda, :basuras
end
