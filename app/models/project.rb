class Project < ApplicationRecord
  has_many :activities
  has_many :building_units
end
