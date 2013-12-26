class UsersController < ApplicationController
  before_action :require_login, [:show, :edit, :update, :destroy]
  before_filter :require_login, :except => [ :create, :new ]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    render :action => :new unless @user.save
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    render :action => :edit unless @user.update_attributes(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end