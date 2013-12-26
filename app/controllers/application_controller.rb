class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
  def not_authenticated
    redirect_to root_url, :alert => "Debe Registrarse o ingresar"
  end
end
