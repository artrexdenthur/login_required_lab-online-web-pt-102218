class SessionsController < ApplicationController
  def new
    current_user = params[:name]
  end

  def create
    return redirect_to '/new' if params[:name].blank?
    session[:name] = params[:name]
    redirect_to '/show'
  end

  def destroy
    reset_session
    redirect_to '/new'
  end
end
