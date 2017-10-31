class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_user
    unless session[:user].present?
      redirect_to root_path
    end
    @user = User.find session[:user]
    @friends = @user.friends
  end
end
