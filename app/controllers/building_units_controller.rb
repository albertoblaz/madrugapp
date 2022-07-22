class BuildingUnitsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @building_units = @project.building_units
  end
end
