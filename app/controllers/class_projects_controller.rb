class ClassProjectsController < ApplicationController

  def index
    @class_projects = ClassProject.all
  end
  
  def new
    @class_project = ClassProject.new
  end

  def create
    @class_project = ClassProject.create(params[:classproject])
    
    if @class_project.save
      "Well done!"
    else
      "ERRRRROR"
    end
  end
  
end
