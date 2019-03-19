class SchoolClassesController < ApplicationController
before_action :get_class, only: [:show, :edit, :update]

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(get_params)
    redirect_to @school_class
  end

  def edit
  end

  def update
    @school_class.update(get_params)
    redirect_to @school_class
  end

  private

  def get_class
    @school_class = SchoolClass.find(params[:id])
  end

  def get_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
