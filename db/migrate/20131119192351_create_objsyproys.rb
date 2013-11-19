class CreateObjsyproys < ActiveRecord::Migration
  def change
    create_table :objsyproys do |t|
      t.string :nombre
      t.string :descripcion
      t.references :departamento, index: true

      t.timestamps
    end
  end
end
