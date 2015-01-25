class CreateSluzenjeHranas < ActiveRecord::Migration
  def change
    create_table :sluzenje_hranas do |t|
      t.belongs_to :sluzenje, index = true
      t.belongs_to :hrana, index = true
      t.timestamps
    end
  end
end
