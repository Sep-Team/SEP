class BitacorasController < ApplicationController
  
  before_action :set_bitacora, only: [:show, :edit, :update, :destroy]

  def index
    @bitacoras = Bitacora.all
  end

  def show
   @bitacora = Bitacora.find(params[:id])
  end

  def new
    @bitacora = Bitacora.new
  end

  def edit
   @bitacora = Bitacora.find(params[:id])
  end

  def create
    @bitacora = Bitacora.new(bitacora_params)
    render :action => :new unless @bitacora.save
    @proyecto = AsignarProy.create(:nombreproyecto => @bitacora.nombreproyecto, :estudiante_id => @bitacora.estudiante_id)
    @actividad = Actividad.create(:fecha_inicio => @bitacora.fecha_inicio,
      :nombre => @bitacora.nombre, :categoria_id => @bitacora.categoria_id,
      :actestado_id => @bitacora.actestado_id, :descripcion => @bitacora.descripcion, :objetivo => @bitacora.objetivo,
      :fecha_fin => @bitacora.fecha_fin, :asignar_proy_id => @proyecto.id)
      redirect_to bitacoras_path
  end

  def update
    @bitacora = Bitacora.find(params[:id])
    render :action => :edit unless @bitacora.update_attributes(bitacora_params)
     @proyecto = AsignarProy.create(:nombreproyecto => @bitacora.nombreproyecto, :estudiante_id => @bitacora.estudiante_id)
    @actividad = Actividad.create(:fecha_inicio => @bitacora.fecha_inicio,
      :nombre => @bitacora.nombre, :categoria_id => @bitacora.categoria_id,
      :actestado_id => @bitacora.actestado_id, :descripcion => @bitacora.descripcion, :objetivo => @bitacora.objetivo,
      :fecha_fin => @bitacora.fecha_fin, :asignar_proy_id => @proyecto.id)
      redirect_to bitacoras_path
  end

  def destroy
    @bitacora = Bitacora.find(params[:id])
    @bitacora.destroy
  end

  private

  def set_bitacora
    @bitacora = Bitacora.find(params[:id])
  end

  def bitacora_params
    params.require(:bitacora).permit(:estudiante_id, :fecha_inicio, :fecha_fin, :descripcion, :objetivo, :nombre, :nombreproyecto, :categoria_id, :actestado_id, :asignar_proy_id, :actividad_id, :asignar_proy_id)
  end
end
