class Admin::UserSessionsController < Admin::ApplicationController
  skip_before_action :logged_in_user?
  
  def index

  end

  def new

  end

  def create
    user = User.find_by(account_id: params[:account_id])
    if user && user.authenticate(params[:password])
      log_in user
      remember user
      redirect_to users_path, flash: {success: 'Successfully logged in'}
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'index'
    end
  end
end
