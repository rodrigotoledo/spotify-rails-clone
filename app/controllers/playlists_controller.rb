class PlaylistsController < ApplicationController
  include Authenticated
  before_action :set_playlist, only: :show
  def show
  end

  protected
    def set_playlist
      @playlist ||= RSpotify::Playlist.find(spotify_user.id, params[:id])
    end
end
