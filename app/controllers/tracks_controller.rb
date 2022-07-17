class TracksController < ApplicationController
  include Authenticated
  before_action :set_track
  def show
    respond_to do |format|
      format.html { redirect_to :back }
      format.turbo_stream
    end
  end

  protected
    def set_track
      @track ||= RSpotify::Track.find(params[:id])
      player = spotify_user.player
      player.play_track(nil, "spotify:track:#{@track.id}")
    end
end
