class KomentarisController < ApplicationController
  def index
    @komentaris = Komentari.all.order('vreme ASC')
    @vinarijas = Vinarija.all.order('ime ASC')
  end

  def show
  end

  def new
    @vinarijas = Vinarija.all.order('ime ASC')
    @komentar = Komentari.new
    @komentaris = Komentari.all.order('vreme DESC')
  end
  def create
    @komentar = Komentari.new(komentari_param)
    @komentar.ime_korisnik = "Анонимен" if @komentar.ime_korisnik.length <= 1
    @komentar.vreme = Time.now
    if @komentar.save
      redirect_to('/komentaris/new')
    else
      redirect_to('/komentaris/new')
    end
  end

  def edit
    @vinarijas = Vinarija.all.order('ime ASC')
    @komentar = Komentari.find(params[:id])
  end
  def update
    @komentar = Komentari.find(params[:id])
    if @komentar.update_attributes(komentari_param)
      redirect_to('/komentaris/new')
    else
      render(:action => 'edit', :id => @komentar.id)
    end
  end

  def delete
    @vinarijas = Vinarija.all.order('ime ASC')
    @komentar = Komentari.find(params[:id])
  end
  def destroy
    Komentari.find(params[:id]).destroy
    redirect_to('/komentaris/new')
  end

  private
  def komentari_param
    params.require(:komentari).permit(:ime_korisnik,:sodrzina)
  end
end
