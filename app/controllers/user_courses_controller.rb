class UserCoursesController < ApplicationController
  def create
    course = Course.find(params[:id])
    if current_user.courses.include?(course)
      flash[:alert] = 'Something went wrong'
    else
      UserCourse.create(course: course, user: current_user)
      flash[:notice] = "You have enrolled to the #{course.name}"
    end
    redirect_to courses_path(page: params[:page])
  end

  def destroy
    enrollment = UserCourse.find(params[:id])
    enrollment.destroy
    redirect_to users_path, notice: "You have discarded enrollment to #{enrollment.course.name}"
  end
end
