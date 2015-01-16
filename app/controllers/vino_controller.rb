class VinoController < ApplicationController
  def index
    @vinos = Vino.all
  end

  def show
    @vinos = Vino.all
    @vino = Vino.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
end
