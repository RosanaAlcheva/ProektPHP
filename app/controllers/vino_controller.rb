class VinoController < ApplicationController
  def index
    @vinos = Vino.all
  end

  def show
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinarija=Vinarija.find_by_ime(params[:query])
    @vinos = @vinarija.vinos
    @vino = Vino.find(params[:id])
    @detali = Sluzenje.find_by_vino_id(params[:id])

    @hranas = Array.new
    @allhranas= Hrana.all
    @allhranas.each do |h|
      @hranas.push(h) if h.sluzenje_id == @detali.id
    end

  end

  def new
  end

  def edit
  end

  def delete
  end
end
