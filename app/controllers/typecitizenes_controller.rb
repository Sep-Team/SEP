class TypecitizenesController < ApplicationController
  before_action :set_typecitizen, only: [:show, :edit, :update, :destroy]

  # GET /typecitizenes
  # GET /typecitizenes.json
  def index
    @typecitizenes = Typecitizen.all
  end

  # GET /typecitizenes/1
  # GET /typecitizenes/1.json
  def show
  end

  # GET /typecitizenes/new
  def new
    @typecitizen = Typecitizen.new
  end

  # GET /typecitizenes/1/edit
  def edit
  end

  # POST /typecitizenes
  # POST /typecitizenes.json
  def create
    @typecitizen = Typecitizen.new(typecitizen_params)

    respond_to do |format|
      if @typecitizen.save
        format.html { redirect_to @typecitizen, notice: 'Typecitizen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @typecitizen }
      else
        format.html { render action: 'new' }
        format.json { render json: @typecitizen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typecitizenes/1
  # PATCH/PUT /typecitizenes/1.json
  def update
    respond_to do |format|
      if @typecitizen.update(typecitizen_params)
        format.html { redirect_to @typecitizen, notice: 'Typecitizen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @typecitizen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typecitizenes/1
  # DELETE /typecitizenes/1.json
  def destroy
    @typecitizen.destroy
    respond_to do |format|
      format.html { redirect_to typecitizenes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typecitizen
      @typecitizen = Typecitizen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typecitizen_params
      params.require(:typecitizen).permit(:name, :acronym)
    end
end
