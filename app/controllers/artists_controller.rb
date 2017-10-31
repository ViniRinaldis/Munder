class ArtistsController < ApplicationController
  layout 'users'

  before_filter :check_user
  def new
  end

  def show
    @artist = Artist.find(params[:artist_id])
  end
end
