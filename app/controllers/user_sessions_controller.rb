class UserSessionsController < ApplicationController
  skip_before_action :logged_in_user?
  
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
