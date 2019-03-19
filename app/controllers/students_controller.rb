class StudentsController < ApplicationController
  before_action :get_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to @student
  end

  def edit
  end

  def update
    @student.update(student_params(:first_name, :last_name))
    redirect_to @student
  end

  private
  def get_student
    @student = Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end