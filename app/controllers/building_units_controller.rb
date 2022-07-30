class BuildingUnitsController < ApplicationController
  before_action :find_project
  before_action :find_bu

  def edit
  end

  def update
    orig_name = @building_unit.name
    respond_to do |format|
      if @building_unit.update(bu_params)
        format.turbo_stream
      else
        @building_unit.name = orig_name
        format.turbo_stream
      end
    end
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def find_bu
    @building_unit = @project.building_units.find(params[:id])
  end

  def bu_params
    params.require(:building_unit).permit(:name)
  end
end
