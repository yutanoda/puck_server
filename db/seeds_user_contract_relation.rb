module Seed
  class SeedUserContractRelation
    def self.seed
      user_contract_relation = UserContractRelation.find_by(user_id: 1, contract_id: 1)

      if user_contract_relation.nil?
        user_contract_relation = UserContractRelation.new(user_id: 1,
        contract_id: 1)
      end
      user_contract_relation.save
    end
  end
end
