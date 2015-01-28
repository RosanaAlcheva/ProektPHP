class Vino < ActiveRecord::Base
  belongs_to :vinarija

  validates_presence_of :ime, :vid, :tip, :sorta, :boja, :slika, :vinarija
  validates_length_of :ime,
                      :minimum => 1,           # more than 1 characters
                      :maximum => 30,          # shorter than 30 characters
                      :in => 1..30,            # between 1 and 30 characters
                      :too_short => 'Многу е кратко за име! / Too short for name!',
                      :too_long => 'Многу е долго за име! / Too long for a name!'
  validates_uniqueness_of :slika
end



