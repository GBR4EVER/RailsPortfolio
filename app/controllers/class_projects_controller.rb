class ClassProjectsController < ApplicationController

  def index
    @class_projects = ClassProject.all
  end
  
  def new
    @class_project = ClassProject.new
  end

  def create
    @class_project = ClassProject.new(params[:class_project])
    
    if @class_project.save
      redirect_to class_project_path
    else
      "ERRRRROR"
    end
  end
  
  def show
  end
  
end
