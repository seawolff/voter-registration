class SessionsController < ApplicationController
  def create
    session[:user] = auth_hash
    redirect_to request.env['omniauth.origin']
  end

  def error
    flash[:error] = "Sign in failed"
    redirect_to request.env['omniauth.origin']
  end

  protected

  def auth_hash
    auth = request.env['omniauth.auth']
    unless auth.extra.nil?
      auth = request.env['omniauth.auth'].except("extra")
    end
    auth
  end
end
