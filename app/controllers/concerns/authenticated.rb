module Authenticated
  extend ActiveSupport::Concern

  included do
    before_action :redirect_unless
    helper_method :spotify_user
  end

  def redirect_unless
    return if session[:omniauth_auth].present?
    redirect_to login_path
  end

  def spotify_user
    @spotify_user ||= RSpotify::User.new(session[:omniauth_auth])
  end

end
