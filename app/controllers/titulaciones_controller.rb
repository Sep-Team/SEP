class TitulacionesController < ApplicationController
  before_action :set_titulacion, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  # GET /titulaciones
  # GET /titulaciones.json
  def index
    @titulaciones = Titulacion.all
  end

  # GET /titulaciones/1
  # GET /titulaciones/1.json
  def show
  end

  # GET /titulaciones/new
  def new
    @titulacion = Titulacion.new
  end

  # GET /titulaciones/1/edit
  def edit
  end

  # POST /titulaciones
  # POST /titulaciones.json
  def create
    @titulacion = Titulacion.new(titulacion_params)

    respond_to do |format|
      if @titulacion.save
        format.html { redirect_to @titulacion, notice: 'Titulacion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @titulacion }
      else
        format.html { render action: 'new' }
        format.json { render json: @titulacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titulaciones/1
  # PATCH/PUT /titulaciones/1.json
  def update
    respond_to do |format|
      if @titulacion.update(titulacion_params)
        format.html { redirect_to @titulacion, notice: 'Titulacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @titulacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titulaciones/1
  # DELETE /titulaciones/1.json
  def destroy
    @titulacion.destroy
    respond_to do |format|
      format.html { redirect_to titulaciones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titulacion
      @titulacion = Titulacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def titulacion_params
      params.require(:titulacion).permit(:descripcion, :sigla)
    end
end
