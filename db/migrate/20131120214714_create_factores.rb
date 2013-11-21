class CreateFactores < ActiveRecord::Migration
  def change
    create_table :factores do |t|
      t.references :area, index: true
      t.references :tipofactor, index: true
      t.string :descripcion

      t.timestamps
    end
  end
end
