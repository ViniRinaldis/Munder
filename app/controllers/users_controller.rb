class UsersController < ApplicationController
 layout "users"

 before_filter :check_user, except: [:new, :create]
 before_filter :set_attributes, except: [:new, :create]
  def home
    @posts = @user.artists.map(&:posts).flatten.compact.sort{|a,b| b.created_at <=> a.created_at }
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
  def profile
    @user_profiled = User.find(params[:user_profile_id])
    @artists_followed = @user_profiled.artists
  end

  private
  def set_attributes
    @friends = @user.friends
  end
  
end
