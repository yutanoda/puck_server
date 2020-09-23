class Preset < ApplicationRecord
  has_many :ins_preset_relations, dependent: :destroy
  has_many :instruments, through: :ins_preset_relations
end
