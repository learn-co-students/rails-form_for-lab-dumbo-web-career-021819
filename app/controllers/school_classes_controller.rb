class SchoolClassesController < ApplicationController
  before_action :get_schoolclass, only: [:show, :edit, :update]

  def show
    # @schoolclass = SchoolClasses.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to @school_class
  end

  def edit
    # @schoolclass = SchoolClasses.find(params[:id])
  end

  def update
    @school_class = SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to @school_class
  end

  private

  def get_schoolclass
    @school_class = SchoolClass.find(params[:id])
  end
end
