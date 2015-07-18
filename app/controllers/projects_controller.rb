class ProjectsController < ApplicationController
  before_action :verify_is_admin, except: [:index]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project added!"
      redirect_to projects_path
    else
      render :new
    end
  end

  def destroy
    @project = Project.find(params[:id])
    flash[:notice] = "Project deleted!"
    @project.destroy
    redirect_to projects_path
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    if @project.save
      flash[:notice] = "Project updated!"
      redirect_to projects_path
    else
      render :edit
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :url)
  end
end
