module Seed
  class SeedContract
    def self.seed
      contract = Contract.find_by(name: "contract1")

      if contract.nil?
        contract = Contract.new(name: "contract1",
        status: 0,
        start_date: "2022-11-09 15:00:00",
        end_date: "2023-11-29 15:00:00")
      end
      contract.save
    end
  end
end


