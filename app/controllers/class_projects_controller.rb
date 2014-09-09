class ClassProjectsController < ApplicationController

  def index
    @classprojects = ClassProject.all
  end
  
  def new
    @classproject = ClassProject.new
  end

  def create
    @classproject = ClassProject.new(params[:classprojects])
  end
  
end
