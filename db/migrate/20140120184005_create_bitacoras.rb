class CreateBitacoras < ActiveRecord::Migration
  def change
    create_table :bitacoras do |t|
      t.references :estudiante, index: true
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :descripcion
      t.string :objetivo
      t.string :nombre
      t.string :nombreproyecto
      t.references :categoria, index: true
      t.references :actestado, index: true
      t.references :asignar_proy, index: true
      t.references :actividad, index: true
      t.references :asignar_proy, index: true

      t.timestamps
    end
  end
end
