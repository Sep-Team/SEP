class CreateEvaluaciones < ActiveRecord::Migration
  def change
    create_table :evaluaciones do |t|
      t.references :estudiante, index: true
      t.references :jefe, index: true
      t.date :fecha_inicio
      t.date :fecha_fin
      t.date :fecha_evaluacion
      t.string :aspectos_positivos
      t.string :aspectos_negativos

      t.timestamps
    end
  end
end
