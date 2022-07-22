class RecordsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @building_units = @project.building_units
    @records = Record.all
    #parents = BuildingUnit.parents(params[:project_id])
    #@building_units = BuildingUnit.first.all_children
=begin
    @building_units = []
    parents.each do |bu|
      @building_units << bu.children
    end
=end
  end

  def new
    @project = Project.find(params[:project_id])
    @building_unit = BuildingUnit.find(params[:building_unit_id])
    @record = Record.new
  end

  def create
    @project = Project.find(params[:project_id])
    @building_unit = BuildingUnit.find(params[:building_unit_id])
    @record = Record.new
  end

  def create
    @project = Project.find(params[:project_id])
    @building_unit = BuildingUnit.find(params[:building_unit_id])
    @record = @building_unit.records.create(create_record_params)
    redirect_to project_records_path
  end

  private

  def create_record_params
    params.require(:record).permit(:activity, :assignees, :start_date, :end_date, :is_finished, :obs)
  end
end
