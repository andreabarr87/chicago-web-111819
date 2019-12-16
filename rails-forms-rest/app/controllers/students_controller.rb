class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    find_student
  end

  def new
    get_all_cohorts
    @student = Student.new

  end

  def create
    student = Student.new(student_params)
    student.save
    redirect_to students_path
  end

  def edit
    find_student
    get_all_cohorts
  end

  def update
    find_student
    @student.assign_attributes(student_params)
    @student.save
    redirect_to @student
  end

  def destroy
    find_student
    @student.destroy
    redirect_to students_path
  end

  private

  def find_student
    @student = Student.find_by(id: params[:id])
  end

  def get_all_cohorts
    @cohorts = Cohort.all
  end

  def student_params
    params.require(:student).permit(:name, :cohort_id)
  end
end
