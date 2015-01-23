class Sluzenje < ActiveRecord::Base
  has_many :hranas
  belongs_to :vino
end
