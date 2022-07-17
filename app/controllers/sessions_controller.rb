class SessionsController < ApplicationController
  include NotAuthenticated
  def login
  end

  def logout
    session[:omniauth_auth] = nil
    redirect_to login_path
  end
end
