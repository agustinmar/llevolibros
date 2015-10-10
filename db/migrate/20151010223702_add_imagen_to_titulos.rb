class AddImagenToTitulos < ActiveRecord::Migration
  def change
    add_column :titulos, :imagen, :string
  end
end
