class CreateFormatos < ActiveRecord::Migration
  def change
    create_table :formatos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
