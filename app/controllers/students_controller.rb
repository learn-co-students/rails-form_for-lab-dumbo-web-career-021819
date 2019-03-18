class StudentsController < ApplicationController

  before_action :get_student, only: [:show, :edit, :update]

  def show
    # @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to @student
  end

  def edit
  end

  def update
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to @student 
  end

  private
  def get_student
    @student = Student.find(params[:id])
  end
end
