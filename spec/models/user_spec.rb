require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ファクトリー' do
    it "has a valid factory" do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end

  describe 'バリデーション' do
    it "is invalid without login_id" do
      user = FactoryBot.build(:user, login_id: " ")
      expect(user).to be_invalid
    end

    it "is invalid with too long login_id" do
      user = FactoryBot.build(:user, login_id: "a" *244 + "@example.com")
      expect(user).to be_invalid
    end


    it "is invalid with duplicated login_id" do
      user1 = FactoryBot.create(:user, login_id: "noda")
      user2 = FactoryBot.build(:user, login_id: "noda")
      expect(user2).to be_invalid
    end


  end
  
end
