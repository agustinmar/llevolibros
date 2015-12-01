class AddLogoToEditor < ActiveRecord::Migration
  def change
    add_column :editores, :logo, :string
  end
end
