class CreateHranas < ActiveRecord::Migration
  def change
    create_table :hranas do |t|
      t.string :ime
      t.string :slika
      t.timestamps
    end
  end
end
