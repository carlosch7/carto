class CreateEncuesta < ActiveRecord::Migration
  def change
    create_table :encuesta do |t|
      t.string :direccion
      t.string :telefono
      t.string :tipo_vivienda
      t.string :estrato
      t.boolean :servicios
      t.string :tipo_servicios
      t.string :habitaciones
      t.string :piso_vivienda
      t.string :paredes_vivienda
      t.string :basuras

      t.timestamps
    end
  end
end
