class VinosController < ApplicationController
  def index
    @vinos = Vino.all
  end

  def show
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinarija=Vinarija.find_by_ime(params[:query])
    @vinos = @vinarija.vinos
    @vino = Vino.find(params[:id])
    @detali = Sluzenje.find_by_vino_id(params[:id])


    @hranas = @detali.hranas
    #@allhranas= Hrana.all
    #@allhranas.each do |h|
    #  @hranas.push(h) if h.sluzenje_id == @detali.id
    #end
  end

  def new
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinos = Vino.all.order('ime ASC')
    @vinarii = @vinarijas
    @vino = Vino.new
  end
  def create
    @vino = Vino.new(vino_params)
    if @vino.save
      redirect_to('/admin')
    else
      render('new')
    end
  end

  def edit
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinos = Vino.all.order('ime ASC')
    @vinarii = @vinarijas
    @vino = Vino.find(params[:id])
  end
  def update
    @vino = Vino.find(params[:id])
    if @vino.update_attributes(vino_params)
      redirect_to('/admin')
    else
      redirect_to(:action => 'edit', :id => @vino.id)
    end
  end

  def delete
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinos = Vino.all.order('ime ASC')
    @vinarii = @vinarijas
    @vino = Vino.find(params[:id])
  end
  def destroy
    Vino.find(params[:id]).destroy
    redirect_to('/admin')
  end

  private
  def vino_params
    params.require(:vino).permit(:ime,:vid,:tip,:sorta,:boja,:slika,:vinarija_id)
  end
end
