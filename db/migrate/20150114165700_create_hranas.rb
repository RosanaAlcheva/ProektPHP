class CreateHranas < ActiveRecord::Migration
  def change
    create_table :hranas do |t|
      #t.integer :id IMPLICITNO SE DODAVA
      t.string :ime
      t.string :slika
      t.references :sluzenje
      t.timestamps
    end
  end
end
