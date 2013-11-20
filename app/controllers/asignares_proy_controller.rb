class AsignaresProyController < ApplicationController
  before_action :set_asignar_proy, only: [:show, :edit, :update, :destroy]

  # GET /asignares_proy
  # GET /asignares_proy.json
  def index
    @asignares_proy = AsignarProy.all
  end

  # GET /asignares_proy/1
  # GET /asignares_proy/1.json
  def show
  end

  # GET /asignares_proy/new
  def new
    @asignar_proy = AsignarProy.new
  end

  # GET /asignares_proy/1/edit
  def edit
  end

  # POST /asignares_proy
  # POST /asignares_proy.json
  def create
    @asignar_proy = AsignarProy.new(asignar_proy_params)

    respond_to do |format|
      if @asignar_proy.save
        format.html { redirect_to @asignar_proy, notice: 'Asignar proy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @asignar_proy }
      else
        format.html { render action: 'new' }
        format.json { render json: @asignar_proy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignares_proy/1
  # PATCH/PUT /asignares_proy/1.json
  def update
    respond_to do |format|
      if @asignar_proy.update(asignar_proy_params)
        format.html { redirect_to @asignar_proy, notice: 'Asignar proy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @asignar_proy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignares_proy/1
  # DELETE /asignares_proy/1.json
  def destroy
    @asignar_proy.destroy
    respond_to do |format|
      format.html { redirect_to asignares_proy_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignar_proy
      @asignar_proy = AsignarProy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignar_proy_params
      params.require(:asignar_proy).permit(:estudiante_id, :objsyproy_id)
    end
end
