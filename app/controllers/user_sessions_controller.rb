class UserSessionsController < ApplicationController
  def index

  end

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      log_in user
      remember user
      redirect_to users_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'index'
    end
  end
end
