module Seed
  class SeedInsPresetRelation
    def self.seed
      ins_preset_relation = InsPresetRelation.find_by(instrument_id: 1, preset_id: 1)

      if ins_preset_relation.nil?
        ins_preset_relation = InsPresetRelation.new(instrument_id: 1, preset_id: 1)
      end
      ins_preset_relation.save
    end
  end
end
