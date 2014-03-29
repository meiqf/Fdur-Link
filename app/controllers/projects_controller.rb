class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = current_user.projects.all
  end

  def show
  end

  def new
    @project = current_user.projects.build
  end

  def edit
  end

  def create
    @project = current_user.projects.build
    if @project.save
      redirect_to action: :index, notice: 'Project was successfully created.' 
    else
      render action: 'new' 
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project was successfully updated.' 
    else
      render action: 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to user_projects_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @user = current_user
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:content, :user_id)
    end

    def current_user
      @user = User.find(params[:user_id])
    end
end
