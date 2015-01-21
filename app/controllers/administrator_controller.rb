class AdministratorController < ApplicationController

  def index
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinos = Vino.all.order('ime ASC')
  end

end
