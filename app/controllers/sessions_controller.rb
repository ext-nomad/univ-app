class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: %i[new create]

  def new; end

  def create
    if (user = User.find_by(email: params[:session][:email]))
      if user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to courses_path, notice: 'Logged in successfully'
      else
        redirect_to login_path, alert: 'Wrong password'
      end
    else
      redirect_to login_path, alert: 'Wrong email'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end

  private

  def logged_in_redirect
    redirect_to root_path, alert: 'You are already logged in' if logged_in?
  end
end
