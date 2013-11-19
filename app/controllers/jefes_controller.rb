class JefesController < ApplicationController
  before_action :set_jefe, only: [:show, :edit, :update, :destroy]

  # GET /jefes
  # GET /jefes.json
  def index
    @jefes = Jefe.all
  end

  # GET /jefes/1
  # GET /jefes/1.json
  def show
  end

  # GET /jefes/new
  def new
    @jefe = Jefe.new
  end

  # GET /jefes/1/edit
  def edit
  end

  # POST /jefes
  # POST /jefes.json
  def create
    @jefe = Jefe.new(jefe_params)

    respond_to do |format|
      if @jefe.save
        format.html { redirect_to @jefe, notice: 'Jefe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jefe }
      else
        format.html { render action: 'new' }
        format.json { render json: @jefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jefes/1
  # PATCH/PUT /jefes/1.json
  def update
    respond_to do |format|
      if @jefe.update(jefe_params)
        format.html { redirect_to @jefe, notice: 'Jefe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jefes/1
  # DELETE /jefes/1.json
  def destroy
    @jefe.destroy
    respond_to do |format|
      format.html { redirect_to jefes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jefe
      @jefe = Jefe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jefe_params
      params.require(:jefe).permit(:nombres, :apellidos, :cargo, :telefono, :email, :empresa_id)
    end
end
