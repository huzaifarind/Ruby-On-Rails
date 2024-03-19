class StudentsController < ApplicationController
    def new
      @student = Student.new  # CREATE
      @students = Student.all  # GET ALL
    end
  
    def create
      @student = Student.new(student_params)  # Access `student_params` here
      if @student.save  # SAVE INTO SQLITE
        redirect_to new_student_path  # Assuming you want to redirect after creation
      else
        # Handle unsuccessful save (optional)
        render :new  # Render the new template again (optional)
      end
    end
  
    private
  
    def student_params
      params.require(:student).permit(:firstname, :lastname)
    end
  end
  