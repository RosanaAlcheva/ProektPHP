class Komentari < ActiveRecord::Base
  validates_presence_of :ime_korisnik, :sodrzina, :vreme
  validates_length_of :ime_korisnik,
                      :minimum => 1,           # more than 1 characters
                      :maximum => 30,          # shorter than 30 characters
                      :in => 1..30,            # between 1 and 30 characters
                      :too_short => 'Многу е кратко за име! / Too short for name!',
                      :too_long => 'Многу е долго за име! / Too long for a name!'
  validates_length_of :sodrzina,
                      :minimum => 1,           # more than 1 characters
                      :maximum => 300,          # shorter than 300 characters
                      :in => 1..300,            # between 1 and 300 characters
                      :too_short => 'Многу е кратко за содржина! / Too short for content!',
                      :too_long => 'Многу е долго за содржина! / Too long for content!'
  validates_uniqueness_of :vreme
end
