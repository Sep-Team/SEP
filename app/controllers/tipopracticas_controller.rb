class TipopracticasController < ApplicationController

  before_action :set_tipopractica, :require_login, only: [:show, :edit, :update, :destroy]

  def index
    @tipopracticas = Tipopractica.all
  end

  def show
    @tipopractica = Tipopractica.find(params[:id])
  end

  def new
    @tipopractica = Tipopractica.new
  end

  def edit
    @tipopractica = Tipopractica.find(params[:id])
  end

  def create
    @tipopractica = Tipopractica.new(tipopractica_params)
    render :action => :new unless @tipopractica.save
  end

  def update
    @tipopractica = Tipopractica.find(params[:id])
    render :action => :edit unless @tipopractica.update_attributes(tipopractica_params)
  end

  def destroy
    @tipopractica = Tipopractica.find(params[:id])
    @tipopractica.destroy
  end

  private

  def set_tipopractica
    @tipopractica = Tipopractica.find(params[:id])
  end

  def tipopractica_params
    params.require(:tipopractica).permit(:nombre, :descripcion)
  end
end
