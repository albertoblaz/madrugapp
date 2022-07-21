class ActivitiesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @activities = @project.activities
  end
end
