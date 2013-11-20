class CreateAsignaresProy < ActiveRecord::Migration
  def change
    create_table :asignares_proy do |t|
      t.references :estudiante, index: true
      t.references :objsyproy, index: true

      t.timestamps
    end
  end
end
