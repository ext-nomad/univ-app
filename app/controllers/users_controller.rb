class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]
  before_action :require_user, except: %i[new create]

  def index
    @users = User.all
  end

  # def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to courses_path, notice: 'User created'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to courses_path, notice: 'Your account successfully updated'
    else
      render 'edit'
    end
  end

  # def destroy
  #   @user.destroy
  #   session[:user_id] = nil if @user == current_user
  #   redirect_to root_path, notice: 'User successfully deleted.'
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
