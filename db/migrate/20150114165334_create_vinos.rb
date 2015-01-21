class CreateVinos < ActiveRecord::Migration
  def change
    create_table :vinos do |t|
      #t.integer :id IMPLICITNO SE DODAVA
      t.string :ime
      t.string :vid
      t.string :tip
      t.string :sorta
      t.string :boja
      t.string :slika
      t.references :vinarijas
      t.timestamps
    end
  end
end
