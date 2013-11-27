class DepartamentosController < ApplicationController
  
  before_filter :require_login
  before_action :set_departamento, :require_login, only: [:show, :edit, :update, :destroy]
  
  def index
    @departamentos = Departamento.all
  end

  def show
    @departamento = Departamento.find(params[:id])
  end

  def new
    @departamento = Departamento.new
  end

  def edit
    @departamento = Departamento.find(params[:id])
  end

  def create
    @departamento = Departamento.new(departamento_params)
    render :action => :new unless @departamento.save
  end

  def update
    @departamento = Departamento.find(params[:id])
    render :action => :edit unless @departamento.update_attributes(departamento_params)
  end

  def destroy
   @departamento = Departamento.find(params[:id])
   @departamento.destroy
  end

  private
    
  def set_departamento
    @departamento = Departamento.find(params[:id])
  end

  def departamento_params
    params.require(:departamento).permit(:nombre, :descripcion)
  end
end
