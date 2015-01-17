class VinarijaController < ApplicationController
  def index
    @vinarijas = Vinarija.all.order('ime ASC')
  end

  def show
    @vinarija = Vinarija.find(params[:id])
    @vinarijas = Vinarija.all.order('ime ASC')

    #get all the wines related to that winary
    @vinos = @vinarija.vinos
  end

  def new
  end

  def edit
  end

  def delete
  end
end
