class Activity < ApplicationRecord
  belongs_to :project
  has_many :records

  def to_s
    "#{self.id}) #{self.name}"
  end
end
