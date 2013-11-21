class NovedadesController < ApplicationController
  before_action :set_novedad, only: [:show, :edit, :update, :destroy]

  # GET /novedades
  # GET /novedades.json
  def index
    @novedades = Novedad.all
  end

  # GET /novedades/1
  # GET /novedades/1.json
  def show
  end

  # GET /novedades/new
  def new
    @novedad = Novedad.new
  end

  # GET /novedades/1/edit
  def edit
  end

  # POST /novedades
  # POST /novedades.json
  def create
    @novedad = Novedad.new(novedad_params)

    respond_to do |format|
      if @novedad.save
        format.html { redirect_to @novedad, notice: 'Novedad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @novedad }
      else
        format.html { render action: 'new' }
        format.json { render json: @novedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novedades/1
  # PATCH/PUT /novedades/1.json
  def update
    respond_to do |format|
      if @novedad.update(novedad_params)
        format.html { redirect_to @novedad, notice: 'Novedad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @novedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novedades/1
  # DELETE /novedades/1.json
  def destroy
    @novedad.destroy
    respond_to do |format|
      format.html { redirect_to novedades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novedad
      @novedad = Novedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novedad_params
      params.require(:novedad).permit(:fecha_ocurrencia, :descripcion, :implicados, :user_id, :actEstado_id)
    end
end
