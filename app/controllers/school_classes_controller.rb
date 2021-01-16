class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    school_class = SchoolClass.new(school_classes_params)
    school_class.save
    
		redirect_to school_class_path(school_class)
  end

  def show
    current_school_class
  end

  def edit
    current_school_class
  end

  def update
    school_class = current_school_class
    school_class.update(school_classes_params)

    redirect_to school_class_path(school_class)
  end
    
  private

  def school_classes_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def current_school_class
    @school_class = SchoolClass.find_by(id: params[:id])
  end
  
end
