class Instrument < ApplicationRecord
  has_many :con_ins_relations, dependent: :destroy
  has_many :contracts, through: :con_ins_relations

  has_many :ins_preset_relations, dependent: :destroy
  has_many :presets, through: :ins_preset_relations
end
