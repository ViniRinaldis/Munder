class UsersController < ApplicationController
 layout "users"

 before_filter :check_user, except: [:new, :create]
  def home
    @friends = @user.friends
  end

  def new
    render :new, layout: false
  end

  def create
  end
end
