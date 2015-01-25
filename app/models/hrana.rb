class Hrana < ActiveRecord::Base
 has_many :sluzenje_hranas
 has_many :sluzenjes, through: :sluzenje_hranas
end
