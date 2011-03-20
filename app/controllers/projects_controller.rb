class ProjectsController < ApplicationController
  respond_to :html

  def index
    @projects = Project.all.to_a
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = 'Created project'
      redirect_to projects_path
    else
      flash[:error] = 'Error while creating project'
      render :action => :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end
end
