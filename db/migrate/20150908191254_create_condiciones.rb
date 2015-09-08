class CreateCondiciones < ActiveRecord::Migration
  def change
    create_table :condiciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
