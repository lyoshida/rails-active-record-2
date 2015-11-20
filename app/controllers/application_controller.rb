class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :ensure_login

  def logged_in?
    session[:id]
  end

  def current_user
    @current_user ||= User.find(session['id'])
  end

  def ensure_login
    redirect_to login_path unless session[:id]
  end

  helper_method :current_user, :logged_in?
end
