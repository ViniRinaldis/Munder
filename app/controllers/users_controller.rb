class UsersController < ApplicationController
 layout "users"

 before_filter :check_user, except: [:new, :create]
  def home
    @friends = @user.friends
    @posts = @user.artists.map(&:posts).flatten.sort{|a,b| a.created_at > b.created_at}
  end

  def new
    @user = User.new
    render :new, layout: false
  end

  def create
    user_params = params.require(:user).permit(:name, :username, :password, :email, :birthdate, :avatar)
    User.create(user_params)
    redirect_to :root
  end

  
end
