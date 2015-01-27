class Vinarija < ActiveRecord::Base


  has_many :vinos
  validates_presence_of :ime, :region, :grad, :godina, :opis, :veb_strana, :slika
  validates_length_of :ime,
                      :minimum => 1,           # more than 1 characters
                      :maximum => 30,          # shorter than 30 characters
                      :in => 1..30,            # between 1 and 30 characters
                      :too_short => 'Многу е кратко за име! / Too short for name!',
                      :too_long => 'Многу е долго за име! / Too long for a name!'
  validates_uniqueness_of :ime, :veb_strana, :slika
  validates_numericality_of   :godina,
                              :only_integer => true,
                              :allow_nil => false,
                              :minimum => 4,
                              :maximum => 4,
                              :greater_than_or_equal_to => 1800,
                              :less_than_or_equal_to => 2500,
                              :too_short => 'Многу е кратко за година! / Too short for year!',
                              :too_long => 'Многу е долго за година! / Too long for a year!'
  validates_format_of :veb_strana,
                      :with => /https?:\/\/[\S]+/,
                      :message => "Не е валидна УРЛ адреса! / Invalid URL!"
  end
