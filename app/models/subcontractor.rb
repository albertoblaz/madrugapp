class Subcontractor < ApplicationRecord
  has_many :subcontracts
  has_many :activities, through: :subcontracts
end
