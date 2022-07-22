class BuildingUnitsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @building_units = @project.building_units
    #parents = BuildingUnit.parents(params[:project_id])
    #@building_units = BuildingUnit.first.all_children
=begin
    @building_units = []
    parents.each do |bu|
      @building_units << bu.children
    end
=end
  end
end
