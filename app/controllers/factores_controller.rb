class FactoresController < ApplicationController

  before_action :set_factor, :require_login, only: [:show, :edit, :update, :destroy]

  def index
    @factores = Factor.all
  end

  def show
    @factor = Factor.find(params[:id])
  end

  def new
    @factor = Factor.new
  end

  def edit
    @factor = Factor.find(params[:id])
  end

  def create
    @factor = Factor.new(factor_params)
    render :action => :new unless @factor.save
  end

  def update
    @factor = Factor.find(params[:id])
    render :action => :edit unless @factor.update_attributes(factor_params)
  end

  def destroy
    @factor = Factor.find(params[:id])
    @factor.destroy
  end

  private
   
  def set_factor
    @factor = Factor.find(params[:id])
  end

  def factor_params
    params.require(:factor).permit(:area_id, :tipofactor_id, :descripcion)
  end
end
