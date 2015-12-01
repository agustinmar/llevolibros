class AddPublicoToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :publico, :boolean
  end
end
