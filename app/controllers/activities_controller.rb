class ActivitiesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @activities = @project.activities
  end

  def new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @activity = @project.activities.create(create_activity_params)
    redirect_to project_activities_path
  end

  private

  def create_activity_params
    params.require(:activity).permit(:name, :description, :ui_color)
  end
end
