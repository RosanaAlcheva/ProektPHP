class Sluzenje < ActiveRecord::Base
  has_many :sluzenje_hranas
  has_many :hranas, through: :sluzenje_hranas
  belongs_to :vino
end
