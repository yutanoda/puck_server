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
    @text = "ユーザ編集"
    @user = User.find(params[:id])
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
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path, flash: {success: '更新しました'}
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.delete
      redirect_to users_path, flash: {success: '削除しました'}
    else
      render :edit
    end
  end

  private 
    def user_params
      params.require(:user).permit(:nickname, :login_id, :email, :password)
    end
end
