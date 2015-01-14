class CreateVinarijas < ActiveRecord::Migration
  def change
    create_table :vinarijas do |t|
      #t.integer :id IMPLICITNO SE DODAVA
      t.string :ime
      t.string :region
      t.string :grad
      t.integer :godina
      t.text :opis
      t.string :veb_strana
      t.string :slika
      t.timestamps
    end
  end
end
