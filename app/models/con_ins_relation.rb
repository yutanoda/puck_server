class ConInsRelation < ApplicationRecord
  belongs_to :contract
  belongs_to :instrument
end
