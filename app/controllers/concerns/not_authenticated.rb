module NotAuthenticated
  extend ActiveSupport::Concern

  included do
    before_action :redirect_unless, only: :login
  end

  def redirect_unless
    return unless session[:omniauth_auth].present?
    redirect_to root_path
  end
end
