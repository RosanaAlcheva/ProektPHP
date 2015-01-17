class VinoController < ApplicationController
  def index
    @vinos = Vino.all
  end

  def show
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinarija=Vinarija.find_by_ime(params[:query])
    @vinos = @vinarija.vinos
    @vino = Vino.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
