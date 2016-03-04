class CreateTitulos < ActiveRecord::Migration
  def change
    create_table :titulos do |t|
      t.string :nombre
      t.string :balazo
      t.integer :categoria_id
      t.text :descripcion
      t.string :aniopub
      
      t.timestamps
    end
  end
end
