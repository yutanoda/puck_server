module Seed
  class SeedPreset
    def self.seed
      preset = Preset.find_by(name: "preset1")

      if preset.nil?
        preset = Preset.new(name: "preset1")
      end
      preset.save
    end
  end
end
