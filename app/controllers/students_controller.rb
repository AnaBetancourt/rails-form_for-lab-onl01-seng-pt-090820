class StudentsController < ApplicationController


  def new
    @student = Student.new
  end

  def create
    student = Student.new(students_params)
    student.save
    
		redirect_to student_path(student)
  end

  def show
    current_student
  end

  def edit
    current_student
  end

  def update
    student = current_student
    student.update(students_params)

    redirect_to student_path(student)
  end
    
  private

  def students_params
    params.require(:student).permit(:first_name, :last_name)
  end

  
  def current_student
    @student = Student.find_by(id: params[:id])
  end
  
end
