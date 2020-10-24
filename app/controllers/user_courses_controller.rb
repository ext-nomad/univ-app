class UserCoursesController < ApplicationController
  def create
    enrollment = UserCourse.new
    course = Course.find(params[:id])
    enrollment.course_id = course.id
    enrollment.user_id = current_user.id

    redirect_to courses_path(page: params[:page]), notice: "You have enrolled to the #{course.name}" if enrollment.save
  end

  def destroy
    enrollment = UserCourse.find(params[:id])
    enrollment.destroy
    redirect_to users_path, notice: "You have discarded enrollment to #{enrollment.course.name}"
  end
end
