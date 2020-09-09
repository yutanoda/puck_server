class Admin::ApplicationController < ActionController::Base
  include UserSessionsHelper
  protect_from_forgery with: :exception
  before_action :logged_in_user?
end
