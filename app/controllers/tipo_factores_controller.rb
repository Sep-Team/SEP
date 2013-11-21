class TipoFactoresController < ApplicationController
  before_action :set_tipo_factor, only: [:show, :edit, :update, :destroy]

  # GET /tipo_factores
  # GET /tipo_factores.json
  def index
    @tipo_factores = TipoFactor.all
  end

  # GET /tipo_factores/1
  # GET /tipo_factores/1.json
  def show
  end

  # GET /tipo_factores/new
  def new
    @tipo_factor = TipoFactor.new
  end

  # GET /tipo_factores/1/edit
  def edit
  end

  # POST /tipo_factores
  # POST /tipo_factores.json
  def create
    @tipo_factor = TipoFactor.new(tipo_factor_params)

    respond_to do |format|
      if @tipo_factor.save
        format.html { redirect_to @tipo_factor, notice: 'Tipo factor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_factor }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_factores/1
  # PATCH/PUT /tipo_factores/1.json
  def update
    respond_to do |format|
      if @tipo_factor.update(tipo_factor_params)
        format.html { redirect_to @tipo_factor, notice: 'Tipo factor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_factores/1
  # DELETE /tipo_factores/1.json
  def destroy
    @tipo_factor.destroy
    respond_to do |format|
      format.html { redirect_to tipo_factores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_factor
      @tipo_factor = TipoFactor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_factor_params
      params.require(:tipo_factor).permit(:nombre, :sigla)
    end
end
