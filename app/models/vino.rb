class Vino < ActiveRecord::Base
  belongs_to :vinarija
  belongs_to :sluzenje #avtomatski kreira one-to-one asocijacija so sluzenje
end
