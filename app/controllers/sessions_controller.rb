class SessionsController < ApplicationController
  include SessionsHelper

  # GET /login
  def new
    # No need
  end

  def create
    user = User.authenticate(params[:session][:login],
                             params[:session][:password])

    if user.nil?
      redirect_to login_path
    else
      session[:user_id] = user.id
      redirect_to root_path
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
