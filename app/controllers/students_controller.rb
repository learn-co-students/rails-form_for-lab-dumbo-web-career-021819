class StudentsController < ApplicationController
before_action :get_student, only: [:show, :edit, :update]

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(get_params)
    redirect_to @student
  end

  def edit
  end

  def update
    @student.update(get_params)
    redirect_to @student
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  def get_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
