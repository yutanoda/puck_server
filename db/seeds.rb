
load 'db/seeds_user.rb'
load 'db/seeds_admin.rb'
load 'db/seeds_contract.rb'
load 'db/seeds_user_contract_relation.rb'
load 'db/seeds_instrument.rb'
load 'db/seeds_con_ins_relation.rb'
load 'db/seeds_preset.rb'
load 'db/seeds_ins_preset_relation.rb'

Seed::SeedUser.seed
Seed::SeedAdmin.seed
Seed::SeedContract.seed
Seed::SeedUserContractRelation.seed
Seed::SeedInstrument.seed
Seed::SeedConInsRelation.seed
Seed::SeedPreset.seed
Seed::SeedInsPresetRelation.seed

