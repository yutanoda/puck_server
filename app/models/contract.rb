class Contract < ApplicationRecord
  has_many :user_contract_relations, dependent: :destroy
  has_many :users, through: :user_contract_relations

  has_many :con_ins_relations, dependent: :destroy
  has_many :instruments, through: :con_ins_relations
end
