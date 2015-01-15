class VinarijaController < ApplicationController
  def index
    @vinarijas = Vinarija.all
  end

  def show
    @vinarija = Vinarija.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
