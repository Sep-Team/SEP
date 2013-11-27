class ObjsyproysController < ApplicationController

  before_action :set_objsyproy, :require_login, only: [:show, :edit, :update, :destroy]

  def index
    @objsyproys = Objsyproy.all
  end

  def show
    @objsyproy = Objsyproy.find(params[:id])
  end

  def new
    @objsyproy = Objsyproy.new
  end

  def edit
    @objsyproy = Objsyproy.find(params[:id])
  end

  def create
    @objsyproy = Objsyproy.new(objsyproy_params)
    render :action => :new unless @objsyproy.save 
  end

  def update
    @objsyproy = Objsyproy.find(params[:id])
    render :action => :edit unless @objsyproy.update_attributes(objsyproy_params)
  end

  def destroy
    @objsyproy = Objsyproy.find(params[:id])
    @objsyproy.destroy
  end

  private

  def set_objsyproy
    @objsyproy = Objsyproy.find(params[:id])
  end

  def objsyproy_params
    params.require(:objsyproy).permit(:nombre, :descripcion, :departamento_id)
  end
end
