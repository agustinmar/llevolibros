class AddWebToEditor < ActiveRecord::Migration
  def change
    add_column :editores, :web, :string
  end
end
