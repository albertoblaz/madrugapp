class Activity < ApplicationRecord
  belongs_to :project
  has_many :records
end
