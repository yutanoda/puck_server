class AuthenticationsController < UserSessionsController
  skip_before_action :logged_in_user?
  def login
    current_user = User.find_by(email: users_params[:account_id], password: users_params[:password])
    return render json: {status: 401, message: '認証に失敗しました'} unless current_user
    render plain: current_user.token

  rescue StandardError => e
    Rails.logger.error(e.message)
    render json: Init.message(500, e.message), status: 500
  end

end
