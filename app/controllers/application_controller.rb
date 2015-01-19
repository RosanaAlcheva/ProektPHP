class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @vinarijas = Vinarija.all.order('ime ASC')
    render "layouts/index"
  end

  def admin
    @vinarijas = Vinarija.all.order('ime ASC')
    @vinos = Vino.all.order('ime ASC')
    @vino = Vino.find_by_ime('Vranec')
    render "layouts/admin"
  end

end
