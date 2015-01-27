class CreateVinarijas < ActiveRecord::Migration

  def up
    create_table :vinarijas do |t|
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

  def down
    drop_table :vinarijas
  end
end
