class ActivitiesController < ApplicationController
  before_action :find_project

  def index
  end

  def new
  end

  def create
    @activity = @project.activities.create(create_activity_params)
    redirect_to project_activities_path
  end

  def destroy
    @activity = @project.activities.find(params[:id])
    @activity.destroy
    redirect_to project_activities_path
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def create_activity_params
    params.require(:activity).permit(:name, :description, :ui_color)
  end
end
