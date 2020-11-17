class AuthenticationsController < ApplicationController
  skip_before_action :logged_in_user?
  skip_before_action :verify_authenticity_token
  def login
    user = User.find_by(login_id: params[:login_id])
    if user && user.authenticate(params[:password])
      render plain: user.token
    else 
      return render json: {status: 401, message: '認証に失敗しました'} 
    end
  end
end
