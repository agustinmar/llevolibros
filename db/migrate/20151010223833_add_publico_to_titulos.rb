class AddPublicoToTitulos < ActiveRecord::Migration
  def change
    add_column :titulos, :publico, :boolean
  end
end
