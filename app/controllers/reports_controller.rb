class ReportsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    # @records = @project.records
    @records = Record.all
    @current_week = DateTime.now.to_date.beginning_of_week
  end

  def paginate_prev

  end

  def paginate_next

  end

  def paginate_records(week_number)
    # TODO Change to project_week_number
    if (1 > week_number || week_number > 53)
      render json: {
        records: [],
        errors: t("error.invalid_week_number"),
      }
    end

    current_week = DateTime.now.to_date

    filter_start = current_week.beginning_of_week
    filter_end = current_week.end_of_week

    records = Record.where("start_date >= ? AND start_date <= ?", filter_start, filter_end)

    render json: {
      records: records,
      errors: nil,
    }
  end
end
