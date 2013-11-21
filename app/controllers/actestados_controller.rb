class ActestadosController < ApplicationController
  before_action :set_actestado, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  # GET /actestados
  # GET /actestados.json
  def index
    @actestados = Actestado.all
  end

  # GET /actestados/1
  # GET /actestados/1.json
  def show
  end

  # GET /actestados/new
  def new
    @actestado = Actestado.new
  end

  # GET /actestados/1/edit
  def edit
  end

  # POST /actestados
  # POST /actestados.json
  def create
    @actestado = Actestado.new(actestado_params)

    respond_to do |format|
      if @actestado.save
        format.html { redirect_to @actestado, notice: 'Actestado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @actestado }
      else
        format.html { render action: 'new' }
        format.json { render json: @actestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actestados/1
  # PATCH/PUT /actestados/1.json
  def update
    respond_to do |format|
      if @actestado.update(actestado_params)
        format.html { redirect_to @actestado, notice: 'Actestado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @actestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actestados/1
  # DELETE /actestados/1.json
  def destroy
    @actestado.destroy
    respond_to do |format|
      format.html { redirect_to actestados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actestado
      @actestado = Actestado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actestado_params
      params.require(:actestado).permit(:nombre, :descripcion)
    end
end
