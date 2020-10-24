class HomeController < ApplicationController
  def index
    redirect_to courses_path if logged_in?
  end

  def about; end
end
