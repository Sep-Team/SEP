class EvaluacionesController < ApplicationController
  before_action :set_evaluacion, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login

  
  def index
    if params[:registro] == nil or params[:registro] <= '0' then
        params[:registro] = 3
    end
     @evaluaciones = Evaluacion.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i).order("id")
  end

  def show
    @evaluacion = Evaluacion.find(params[:id])
  end

  def new
    @evaluacion = Evaluacion.new
    @jefe = Jefe.find_by_cedula(current_user.username)
  end

  def edit
    @evaluacion = Evaluacion.find(params[:id])
  end

  def create
     @evaluacion = Evaluacion.new(evaluacion_params)
    #Recuperamos el estudiante desde la tabla de "users" en @estudiante
    @jefe = Jefe.find_by_documento(current_user.username)
    #Recperamos el "id" del Estudiante desde @estudiante
    @jefe.jefe_id = @jefe.id
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
