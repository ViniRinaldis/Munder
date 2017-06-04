class MainPageController < ApplicationController
  def index
  end
  def authenticate_user
    if params[:username].present? && params[:password].present?
      unless @user = User.where(username: params[:username]).first
        
      end
       if @user.authenticate_password?(params[:password])
         session[:user] = @user.id
         redirect_to users_home_path
       end

    end
  end
end
