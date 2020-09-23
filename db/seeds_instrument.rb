module Seed
  class SeedInstrument
    def self.seed
      instrument = Instrument.find_by(name: "instrument1")

      if instrument.nil?
        instrument = Instrument.new(name: "instrument1")
      end
      instrument.save
    end
  end
end
