class EvaluacionesController < ApplicationController
  
  before_action :set_evaluacion, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  
  def index
    @evaluaciones = Evaluacion.all
  end

  def show
    @evaluacion = Evaluacion.find(params[:id])
  end

  def new
    @evaluacion = Evaluacion.new
  end

  def edit
    @evaluacion = Evaluacion.find(params[:id])
  end

  def create
    @evaluacion = Evaluacion.new(evaluacion_params)
    render :action => :new unless @evaluacion.save
  end

  def update
    @evaluacion = Evaluacion.find(params[:id])
    render :action => :edit unless @evaluacion.update_attributes(evaluacion_params)
   
  end

  def destroy
   @evaluacion = Evaluacion.find(params[:id])
   @evaluacion.destroy
  end

  private
    
  def set_evaluacion
    @evaluacion = Evaluacion.find(params[:id])
  end

  def evaluacion_params
    params.require(:evaluacion).permit(:estudiante_id, :jefe_id, :fecha_inicio, :fecha_fin, :fecha_evaluacion, :aspectos_positivos, :aspectos_negativos,
      :aspectospositivofactortecnico, :aspectosnegativofactortecnico, :relacionesinterpersona,
      :trabajoequipo, :solucionproblema, :cumplimiento, :organizacion, :transferenciaconocimiento,
      :mejoracontinua, :fortalecimientoocupacional, :oportunidadcalidad, :responsabilidadambiental,
      :administracionrecurso, :seguridadocupacionalindustrial, :documentacionetapaproductiva)
  end
end
