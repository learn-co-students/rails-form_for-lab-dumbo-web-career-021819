class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
    end

    def show 
        @school_class = get_school_class
    end

    def create
        @school_class = SchoolClass.create(school_class_params)
        redirect_to @school_class
    end

    def edit
        @school_class = get_school_class
    end

    def update
        @school_class = get_school_class
        @school_class.update(school_class_params)
        redirect_to @school_class
        
    end

    private 

    def school_class_params 
        params.require(:school_class).permit(:title, :room_number)
    end

    def get_school_class 
        SchoolClass.find(params[:id])
    end

end
