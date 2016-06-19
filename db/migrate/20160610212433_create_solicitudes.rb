class CreateSolicitudes < ActiveRecord::Migration
  def change
    create_table :solicitudes do |t|
      t.string :titulo
      t.string :autor
      t.text :informacion 
      t.string :nombre
      t.string :correo
      t.string :telefono

      t.timestamps
    end
  end
end
