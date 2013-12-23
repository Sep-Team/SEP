class EstudiantesController < ApplicationController

  before_action :set_estudiante,  :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  before_filter :find_asignar_proy, :except => [ :index, :create, :new ]
  
  def index
    if params[:registro] == nil or params[:registro] <= '0' then
        params[:registro] = 4
    end
    @estudiantes = Estudiante.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
  end

  def show
    @estudiante = Estudiante.find(params[:id])
  end

  def new
    @estudiante = Estudiante.new
  end

  def edit
    @estudiante = Estudiante.find(params[:id])
  end

  def create
    @estudiante = Estudiante.new(estudiante_params)
    render :action => :new unless @estudiante.save
  end

  def update
   @estudiante = Estudiante.find(params[:id])
   render :action => :edit unless @estudiante.update_attributes(estudiante_params)
  end

  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy
  end


  private

  def find_asignar_proy
      @estudiante = Estudiante.find(params[:id]) if params[:id]
  end 

  private

  def set_estudiante
    @estudiante = Estudiante.find(params[:id])
  end

  def estudiante_params
    params.require(:estudiante).permit(:nombre1, :nombre2, :apellido1, :apellido2, :email, :genero, :documento, :tipopractica_id, :ficha_id, :jefe_id, :tipodoc_id)
  end
end
