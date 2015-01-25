class SluzenjeHrana < ActiveRecord::Base
  belongs_to :sluzenje
  belongs_to :hrana
end
