class Hrana < ActiveRecord::Base
 has_many :sluzenje_hranas
 has_many :sluzenjes, through: :sluzenje_hranas

 validates_presence_of :ime, :slika,
                    :message => "Не смее да биде празно! / Can't be blank!"
 validates_length_of :ime,
                     :minimum => 1,           # more than 1 characters
                     :maximum => 30,          # shorter than 30 characters
                     :in => 1..30,            # between 1 and 30 characters
                     :too_short => 'Кратко е за име! / Too short for name!',
                     :too_long => 'Долго е за име! / Too long for a name!'
 validates_uniqueness_of :ime, :slika

end
