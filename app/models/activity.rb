class Activity < ApplicationRecord
  belongs_to :project
  has_many :records
  has_many :subcontracts
  has_many :subcontractors, through: :subcontracts

  def to_s
    "#{self.id}) #{self.name}"
  end

  def subcontractor_names
    self.subcontractors.map { |sub| sub.name }.join(", ")
  end
end
