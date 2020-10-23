class CoursesController < ApplicationController
  before_action :require_user

  def index
    @courses = Course.paginate(page: params[:page], per_page: 6)
  end

  def show
    @course = Course.find(params[:id])
  end
end
