class Record < ApplicationRecord
  belongs_to :activity
  belongs_to :building_unit
end
