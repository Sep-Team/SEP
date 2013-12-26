class JefesController < ApplicationController
  before_action :set_jefe, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login

  def index
    if params[:registro] == nil or params[:registro] <= '0' then
        params[:registro] = 5
    end
    @jefes = Jefe.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
  end

  def show
    @jefe = Jefe.find(params[:id])
  end

  def new
    @jefe = Jefe.new
  end

  def edit
    @jefe = Jefe.find(params[:id])
  end

  def create
    @jefe = Jefe.new(jefe_params)
    render :action => :new unless @jefe.save
  end

  def update
    @jefe = Jefe.find(params[:id])
    render :action => :edit unless @jefe.update_attributes(jefe_params)
  end

  def destroy
    @jefe = Jefe.find(params[:id])
    @jefe.destroy
  end

  private

  def set_jefe
      @jefe = Jefe.find(params[:id])
  end

  def jefe_params
      params.require(:jefe).permit(:nombres, :apellidos, :cargo, :telefono, :email, :empresa_id)
  end
end
