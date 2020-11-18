class UserSessionsController < ApplicationController
  skip_before_action :logged_in_user?
  
  def index

  end

  #ログイン処理
  def create
    user = User.find_by(login_id: params[:login_id])
    if user && user.authenticate(params[:password])
      log_in user
      remember user
      redirect_to users_path, flash: {success: 'ログインしました'}
    else
      flash.now[:danger] = 'ログインidかパスワードが間違っています'
      render 'index'
    end
  end

  #ログアウト処理

  def destroy
    log_out
    redirect_to root_url
  end
  
end
