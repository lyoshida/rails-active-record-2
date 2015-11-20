class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:user][:username])
    password = params[:user][:password]

    if user && user.authenticate(password)
      session[:id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      redirect_to login_path, notice: "Invalid username/password combination"
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "You have been logged out"
  end
end
