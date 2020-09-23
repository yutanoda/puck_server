module Seed
  class SeedConInsRelation
    def self.seed
      con_ins_relation = ConInsRelation.find_by(contract_id: 1, instrument_id: 1)

      if con_ins_relation.nil?
        con_ins_relation = ConInsRelation.new(contract_id: 1, instrument_id: 1)
      end
      con_ins_relation.save
    end
  end
end
