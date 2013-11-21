class DetalleEvaluacionesController < ApplicationController
  before_action :set_detalle_evaluacion, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  # GET /detalle_evaluaciones
  # GET /detalle_evaluaciones.json
  def index
    @detalle_evaluaciones = DetalleEvaluacion.all
  end

  # GET /detalle_evaluaciones/1
  # GET /detalle_evaluaciones/1.json
  def show
  end

  # GET /detalle_evaluaciones/new
  def new
    @detalle_evaluacion = DetalleEvaluacion.new
  end

  # GET /detalle_evaluaciones/1/edit
  def edit
  end

  # POST /detalle_evaluaciones
  # POST /detalle_evaluaciones.json
  def create
    @detalle_evaluacion = DetalleEvaluacion.new(detalle_evaluacion_params)

    respond_to do |format|
      if @detalle_evaluacion.save
        format.html { redirect_to @detalle_evaluacion, notice: 'Detalle evaluacion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @detalle_evaluacion }
      else
        format.html { render action: 'new' }
        format.json { render json: @detalle_evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_evaluaciones/1
  # PATCH/PUT /detalle_evaluaciones/1.json
  def update
    respond_to do |format|
      if @detalle_evaluacion.update(detalle_evaluacion_params)
        format.html { redirect_to @detalle_evaluacion, notice: 'Detalle evaluacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @detalle_evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_evaluaciones/1
  # DELETE /detalle_evaluaciones/1.json
  def destroy
    @detalle_evaluacion.destroy
    respond_to do |format|
      format.html { redirect_to detalle_evaluaciones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_evaluacion
      @detalle_evaluacion = DetalleEvaluacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_evaluacion_params
      params.require(:detalle_evaluacion).permit(:evaluacion_id, :factor_id, :nota, :observaciones)
    end
end
