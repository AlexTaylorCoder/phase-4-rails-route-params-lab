class StudentsController < ApplicationController

  def index
    students = Student.all
    filtered = students.where("? == first_name OR ? == last_name",params[:first_name],params[:last_name])
    render json: filtered
  end
  def student 
    student = Student.find(params[:id])
    render json: student
  end
end
