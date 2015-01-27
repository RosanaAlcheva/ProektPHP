class KomentarisController < ApplicationController
  def index

  end

  def show
  end

  def new
  end
  def create
  end

  def edit
  end
  def update
  end

  def delete
  end
  def destroy
  end

  private
  def komentari_param
    params.require(:komentar).permit(:ime,:sodrzina,:vreme)
  end
end
