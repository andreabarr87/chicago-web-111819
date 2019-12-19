class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @errors = flash[:errors]
    @dogs = Dog.all
    @employee = Employee.new
  end

  def create
    employee = Employee.new(employee_params)

    if employee.valid?
      employee.save
      redirect_to employee
    else
      flash[:errors] = employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end
end
