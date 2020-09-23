class InsPresetRelation < ApplicationRecord
  belongs_to :instrument
  belongs_to :preset
end
