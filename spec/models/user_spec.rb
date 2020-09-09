require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ファクトリー' do
    it "has a valid factory" do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end

  describe 'バリデーション' do
    it "is invalid without account_id" do
      user = FactoryBot.build(:user, account_id: " ")
      expect(user).to be_invalid
    end

    it "is invalid with too long account_id" do
      user = FactoryBot.build(:user, account_id: "a" *244 + "@example.com")
      expect(user).to be_invalid
    end


    it "is invalid with duplicated account_ids" do
      user1 = FactoryBot.create(:user, account_id: "noda")
      user2 = FactoryBot.build(:user, account_id: "noda")
      expect(user2).to be_invalid
    end


  end
  
end
