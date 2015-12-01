class AddAniopubToTitulo < ActiveRecord::Migration
  def change
    add_column :titulos, :aniopub, :string
  end
end
