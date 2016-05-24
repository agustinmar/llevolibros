class CreateEditores < ActiveRecord::Migration
  def change
    create_table :editores do |t|
      t.string :nombre
      t.text :descripcion
      t.string :web
      t.string :logo

      t.timestamps
    end
  end
end
