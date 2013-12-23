class CreateActividades < ActiveRecord::Migration
  def change
    create_table :actividades do |t|
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :descripcion
      t.string :objetivo
      t.string :nombre
      t.references :categoria, index: true
      t.references :actestado, index: true
      t.references :asignar_proy, index: true

      t.timestamps
    end
  end
end
