class CreateAutores < ActiveRecord::Migration
  def change
    create_table :autores do |t|
      t.string :nombre
      t.text :descripcion
      t.string :foto

      t.timestamps
    end
  end
end
