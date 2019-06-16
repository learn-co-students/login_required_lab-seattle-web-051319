class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name] == ''
      redirect_to '/new'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if session[:name] != nil
      session.destroy
    end
  end

end
