class CategoriasController < ApplicationController
  before_action :set_categoria, :require_login, only: [:show, :edit, :update, :destroy]


  def index
    @categorias = Categoria.all
  end

  def show
    @categoria = Categoria.find(params[:id])
  end

  def new
    @categoria = Categoria.new
  end

  def edit
    @categoria = Categoria.find(params[:id])
  end

  def create
    @categoria = Categoria.new(categoria_params)
    render :action => :new unless @categoria.save
  end

  def update
   @categoria = Categoria.find(params[:id])
   render :action => :edit unless @categoria.update_attributes(categoria_params)
  end

  def destroy
    @categoria = Categoria.find(params[:id])
    @categoria.destroy
  end

  private

  def set_categoria
    @categoria = Categoria.find(params[:id])
  end

  def categoria_params
   params.require(:categoria).permit(:nombre, :descripcion)
  end
end
