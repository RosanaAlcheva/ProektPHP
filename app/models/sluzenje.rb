class Sluzenje < ActiveRecord::Base
  has_many :sluzenje_hranas
  has_many :hranas, through: :sluzenje_hranas
  belongs_to :vino

  validates_presence_of :vino, :temperatura_max, :temperatura_min, :slika_chasa,
                      :message => "Не смее да биде празно! / Can't be blank!"
  validates_numericality_of   :temperatura_max, :temperatura_min,
                              :only_integer => true,
                              :allow_nil => false,
                              :minimum => 2,
                              :maximum => 2,
                              :greater_than_or_equal_to => 0,
                              :less_than_or_equal_to => 30,
                              :too_short => 'Многу е кратко за температура! / Too short for temperature!',
                              :too_long => 'Многу е долго за температура! / Too long for a temperature!',
                              :message => "Температурата не е во опсег! / Temperature out of range!"
end
