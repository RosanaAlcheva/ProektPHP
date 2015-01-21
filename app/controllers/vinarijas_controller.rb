class VinarijasController < ApplicationController
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
    @vinos =Vino.all.order('ime ASC')
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinarija = Vinarija.new
  end
  def create
    @vinarija = Vinarija.new(vinarija_params)
    if @vinarija.save
      redirect_to('/admin')
    else
      render('new')
    end
  end

  def edit
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinos = Vino.all.order('ime ASC')
    @vinarija = Vinarija.find(params[:id])
  end
  def update
    @vinarija = Vinarija.find(params[:id])
    if @vinarija.update_attributes(vinarija_params)
      redirect_to('/admin')
    else
      redirect_to(:action => 'edit', :id => @vinarija.id)
    end
  end

  def delete
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinos = Vino.all.order('ime ASC')
    @vinarija = Vinarija.find(params[:id])
  end
  def destroy
    Vinarija.find(params[:id]).destroy
    redirect_to('/admin')
  end

  private
  def vinarija_params
    params.require(:vinarija).permit(:ime,:region,:grad,:godina,:opis,:veb_strana,:slika)
  end

end
