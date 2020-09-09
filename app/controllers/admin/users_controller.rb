class Admin::UsersController < Admin::ApplicationController
  
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end

  def edit
  end

  def create
  end

  def update
  end
end
