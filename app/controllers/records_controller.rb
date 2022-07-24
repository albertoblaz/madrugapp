class RecordsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @building_units = @project.building_units
    @records_map = {}
    @building_units.each do |bu|
      @records_map[bu.id] = bu.records
    end

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
    @record = Record.new(start_date: params[:date], end_date: params[:date], is_finished: false)
  end

  def create
    @project = Project.find(params[:project_id])
    @building_unit = BuildingUnit.find(params[:building_unit_id])
    @record = @building_unit.records.create(record_params)
    redirect_to project_records_path
  end

  def edit
    @project = Project.find(params[:project_id])
    @building_unit = BuildingUnit.find(params[:building_unit_id])
    @record = @building_unit.records.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @building_unit = BuildingUnit.find(params[:building_unit_id])
    @record = @building_unit.records.find(params[:id])
    if @record.update(record_params)
      redirect_to project_records_path
    else
      redirect_to project_records_path, status: :unprocessable_entity
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @building_unit = BuildingUnit.find(params[:building_unit_id])
    @record = @building_unit.records.find(params[:id])
    @record.destroy
    redirect_to project_records_path, status: :see_other
  end

  private

  def record_params
    params.require(:record).permit(:activity_id, :assignees, :start_date, :end_date, :is_finished, :obs)
  end
end
