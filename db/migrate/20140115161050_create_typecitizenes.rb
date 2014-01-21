class CreateTypecitizenes < ActiveRecord::Migration
  def change
    create_table :typecitizenes do |t|
      t.string :name
      t.string :acronym

      t.timestamps
    end
  end
end
