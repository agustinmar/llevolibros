class CreateEditores < ActiveRecord::Migration
  def change
    create_table :editores do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
