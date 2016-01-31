class StudentsController < ApplicationController
  def new
  end

  def create
    stud = Student.new 
    stud.name = params[:name]
    stud.dept = params[:dept]
    stud.age = params[:age]
    stud.save
    redirect_to action: "index"
  end
  
  def edit
    @stud = Student.find_by(:sno => params[:id]) 
  end

  def update
    stud = Student.find_by(:sno => params[:id])
    stud.name = params[:name]
    stud.dept = params[:dept]
    stud.age = params[:age]
    stud.save
    redirect_to action: "index"
  end

  def show
    @stud = Student.where(:sno => params[:id]).first
    # render :json =>@stud.to_json
  end

  def index
    @students  = Student.all
    # render :json => @students.to_json 
  end

  def delete
  end

  def dept
    @dept_students = Student.where(:dept => params[:dept])
  end

  def departments
    @departments = Student.select(:dept).distinct
  end  
    
end
