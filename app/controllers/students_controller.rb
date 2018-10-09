class StudentsController < ApplicationController
  def index
    @students  = Student.all
    @group = Group.all
  end

  def show
    @student = Student.find params[:id]
    @group = Group.find (@student.group_id)
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find params[:id]
  end

  def create

  end

  def update
    @student = Student.find params[:id]
  end

  def destroy
    @student = Student.find params[:id]
  end

  def student_params
    student_params = params.require(:student).permit(:name, :group_id)
  end
end
