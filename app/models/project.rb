class Project < ApplicationRecord
  has_many :activities
  has_many :building_units
  has_many :subcontractors
  has_many :subcontracts
end
