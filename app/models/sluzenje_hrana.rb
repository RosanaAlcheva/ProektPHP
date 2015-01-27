class SluzenjeHrana < ActiveRecord::Base
  belongs_to :sluzenje
  belongs_to :hrana

  validates_presence_of :sluzenje, :hrana,
                      :message => "Не смее да биде празно! / Can't be blank!"
end
