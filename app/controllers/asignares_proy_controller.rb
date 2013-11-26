class AsignaresProyController < ApplicationController
  
  before_action :set_asignar_proy,:require_login, only: [:show, :edit, :update, :destroy]

  def index
    @asignares_proy = AsignarProy.all
  end

  def show
    @asignar_proy = AsignarProy.find(params[:id])
  end

  def new
    @asignar_proy = AsignarProy.new
  end

  def edit
    @asignar_proy = AsignarProy.find(params[:id])
  end

  def create
    @asignar_proy = AsignarProy.new(asignar_proy_params)
    render :action => :new unless @asignar_proy.save
  end

  def update
    @asignar_proy = AsignarProy.find(params[:id])
    render :action => :edit unless @asignar_proy.update_attributes(asignar_proy_params)
  end

  def destroy
    @asignar_proy = AsignarProy.find(params[:id])
    @asignar_proy.destroy
  end

  private

  def set_asignar_proy
    @asignar_proy = AsignarProy.find(params[:id])
  end

  def asignar_proy_params
    params.require(:asignar_proy).permit(:estudiante_id, :objsyproy_id)
  end
end
