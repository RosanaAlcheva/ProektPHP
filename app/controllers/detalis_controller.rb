class DetalisController < ApplicationController
  def index
  end

  def show
  end

  def new
    @sluzenje = Sluzenje.new
  end
  def create
    @sluzenje = Sluzenje.create(detali_param)
    if @sluzenje.save
      redirect_to('/admin')
    else
      render('new')
    end
  end

  def edit
    @sluzenje = Sluzenje.find(params[:id])
  end
  def update
    @sluzenje = Sluzenje.find(params[:id])
    if @sluzenje.update_attributes(detali_param)
      redirect_to('/admin')
    else
      redirect_to(:action => 'edit', :id => @sluzenje.id)
    end
  end

  def delete
    @sluzenje = Sluzenje.find(params[:id])
  end
  def destroy
    Sluzenje.find(params[:id]).destroy
    redirect_to('/admin')
  end

  private
  def detali_param
    params.require(:sluzenje).permit(:temperatura_max,:temperatura_min,:slika_chasa,:vino_id)
  end
end
