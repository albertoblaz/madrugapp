class Record < ApplicationRecord
  belongs_to :activity
  belongs_to :building_unit

  def num_resources
    self.assignees.split(', ').count.to_s
  end
end
