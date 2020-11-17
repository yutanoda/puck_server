class UsersController < ApplicationController
  
  def index
    @text = "ユーザ一覧"
    @users = User.all
  end
  def new
    @text = "ユーザ新規作成"
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, flash: {success: '保存しました'}
    else
      render :new
    end
  end

  def update
  end

  private 
    def user_params
      params.require(:user).permit(:nickname, :login_id, :email, :password)
    end
end
