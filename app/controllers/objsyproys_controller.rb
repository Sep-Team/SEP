class ObjsyproysController < ApplicationController
  before_action :set_objsyproy, only: [:show, :edit, :update, :destroy]

  # GET /objsyproys
  # GET /objsyproys.json
  def index
    @objsyproys = Objsyproy.all
  end

  # GET /objsyproys/1
  # GET /objsyproys/1.json
  def show
  end

  # GET /objsyproys/new
  def new
    @objsyproy = Objsyproy.new
  end

  # GET /objsyproys/1/edit
  def edit
  end

  # POST /objsyproys
  # POST /objsyproys.json
  def create
    @objsyproy = Objsyproy.new(objsyproy_params)

    respond_to do |format|
      if @objsyproy.save
        format.html { redirect_to @objsyproy, notice: 'Objsyproy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @objsyproy }
      else
        format.html { render action: 'new' }
        format.json { render json: @objsyproy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objsyproys/1
  # PATCH/PUT /objsyproys/1.json
  def update
    respond_to do |format|
      if @objsyproy.update(objsyproy_params)
        format.html { redirect_to @objsyproy, notice: 'Objsyproy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @objsyproy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objsyproys/1
  # DELETE /objsyproys/1.json
  def destroy
    @objsyproy.destroy
    respond_to do |format|
      format.html { redirect_to objsyproys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objsyproy
      @objsyproy = Objsyproy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objsyproy_params
      params.require(:objsyproy).permit(:nombre, :descripcion, :departamento_id)
    end
end
