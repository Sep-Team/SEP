class FactoresController < ApplicationController
  before_action :set_factor, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  # GET /factores
  # GET /factores.json
  def index
    @factores = Factor.all
  end

  # GET /factores/1
  # GET /factores/1.json
  def show
  end

  # GET /factores/new
  def new
    @factor = Factor.new
  end

  # GET /factores/1/edit
  def edit
  end

  # POST /factores
  # POST /factores.json
  def create
    @factor = Factor.new(factor_params)

    respond_to do |format|
      if @factor.save
        format.html { redirect_to @factor, notice: 'Factor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @factor }
      else
        format.html { render action: 'new' }
        format.json { render json: @factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factores/1
  # PATCH/PUT /factores/1.json
  def update
    respond_to do |format|
      if @factor.update(factor_params)
        format.html { redirect_to @factor, notice: 'Factor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factores/1
  # DELETE /factores/1.json
  def destroy
    @factor.destroy
    respond_to do |format|
      format.html { redirect_to factores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factor
      @factor = Factor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factor_params
      params.require(:factor).permit(:area_id, :tipofactor_id, :descripcion)
    end
end
