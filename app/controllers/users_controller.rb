class UsersController < ApplicationController
 layout "users"

 before_filter :check_user
  def home

  end
end
