class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.integer :titulo_id
      t.integer :editor_id
      t.integer :paginas
      t.string :edicion
      t.string :fechapub
      t.integer :pais_id
      t.integer :idioma_id
      t.integer :formato_id
      t.integer :condicion_id
      t.string :isbn10
      t.string :isbn13
      t.string :ean
      t.integer :peso
      t.string :medidas
      t.string :portada

      t.timestamps
    end
  end
end
