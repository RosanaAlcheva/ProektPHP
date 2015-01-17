class CreateSluzenjes < ActiveRecord::Migration
  def change
    create_table :sluzenjes do |t|
      t.integer :temperatura_max
      t.integer :temperatura_min
      t.string :slika_chasa
      #t.references :hrana
      t.references :vino
      t.timestamps
    end
  end
end
