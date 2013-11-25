class ActividadesController < ApplicationController
  before_action :set_actividad, only: [:show, :edit, :update, :destroy]
 
  
  def index
    @actividades = Actividad.all
  end

  def show
    @actividad = Actividad.find(params[:id])
  end

  def new
    @actividad = Actividad.new
  end

  def edit
    @actividad = Actividad.find(params[:id])
  end

  def create
    @actividad = Actividad.new(actividad_params)
    render :action => :new unless @actividad.save
   
  end

  def update
    @actividad = Actividad.find(params[:id])
    render :action => :edit unless @actividad.update_attributes(actividad_params)
  end

  def destroy
   @actividad = Actividad.find(params[:id])
   @actividad.destroy
  end

  private
  
  def set_actividad
    @actividad = Actividad.find(params[:id])
  end

  def actividad_params
    params.require(:actividad).permit(:fecha_inicio, :fecha_fin, :descripcion, :categoria_id, :objsyproy_id, :estudiante_id, :actEstado_id)
  end
end
