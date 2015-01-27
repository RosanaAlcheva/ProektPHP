class CreateKomentaris < ActiveRecord::Migration
  def change
    create_table :komentaris do |t|
      t.string :ime
      t.text :sodrzina
      t.datetime :vreme
      t.timestamps
    end
  end
end
