class SessionsController < ApplicationController
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
end
