class Subcontract < ApplicationRecord
  belongs_to :activity
  belongs_to :subcontractor
  belongs_to :project
end
