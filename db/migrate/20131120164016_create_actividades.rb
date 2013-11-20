class CreateActividades < ActiveRecord::Migration
  def change
    create_table :actividades do |t|
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :descripcion
      t.references :categoria, index: true
      t.references :objsyproy, index: true
      t.references :estudiante, index: true
      t.references :actEstado, index: true

      t.timestamps
    end
  end
end
