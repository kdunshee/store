class DepartmentsController < ApplicationController
  
  before_action :set_departmet, only: [:show, :edit, :destroy, :update]

  
  def index
    @departments = Department.all
  end

  def show
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @deparment.save redirect to department_paths
      else
      render :new
      end
   end

  def updated 
    if department.update(department_params)
      redirect_to department 
    end
  end

  def edit
    # render: "partial form"
  end

  def destroy 
    @department.destroy
    redirect to departments_paths
  end

  private

  def set_department
    @department = Department.find(params[:id])
  end

end
