class ProjectsController < ApplicationController
  def index
    @projects = Project.all.to_a
  end
end
