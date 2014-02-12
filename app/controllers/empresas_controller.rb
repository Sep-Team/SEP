class EmpresasController < ApplicationController
  before_action :set_empresa,  :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  
  def index

    if params[:registro] == nil or params[:registro] <= '0' then
      params[:registro] = 3
    end
     @jefe = Jefe.find_by_cedula(current_user.username)
     @empresas = Empresa.where(:id => @jefe.empresa_id).search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
  end

  def show
    @empresa = Empresa.find(params[:id])
  end

  def new
    @empresa = Empresa.new
  end

  def edit
    @empresa = Empresa.find(params[:id])
  end

  def create
    @empresa = Empresa.new(empresa_params)
    render :action => :new unless @empresa.save
  end

  def update
    @empresa = Empresa.find(params[:id])
    render :action => :edit unless @empresa.update_attributes(empresa_params)
  end

  def destroy
   @empresa = Empresa.find(params[:id])
   @empresa.destroy
  end

  private
    
  def set_empresa
    @empresa = Empresa.find(params[:id])
  end

  def empresa_params
    params.require(:empresa).permit(:nombre, :nit, :dv, :direccion, :telefono, :fax, :email, :paginaweb)
  end
end
