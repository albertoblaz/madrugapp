class Record < ApplicationRecord
  belongs_to :activity
  belongs_to :building_unit

  validates :activity_id, comparison: { greater_than: 0 }
  validates :end_date, comparison: { greater_than_or_equal_to: :start_date }

  def num_resources
    self.assignees.split(', ').count.to_s
  end
end
