class Project < ApplicationRecord
  has_many :activities
  has_many :building_units
  has_many :subcontractors
end
