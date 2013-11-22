class SessionsController < ApplicationController
  
  def new
  end

  def create
  	user = login(params[:username], params[:password], params[:remember_me])
  if user
      redirect_back_or_to :home
  else
    render :new
  end
  end

  def destroy
  	logout
  redirect_to login_path
  end
end