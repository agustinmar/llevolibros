class CreateAutoresTitulos < ActiveRecord::Migration
  def change
    create_table :autores_titulos, :id => false do |t|
      t.references :autor
      t.references :titulo	
    end
    add_index :autores_titulos, :titulo_id
    add_index :autores_titulos, :autor_id
  end
end