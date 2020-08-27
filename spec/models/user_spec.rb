require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ファクトリー' do
    it "has a valid factory" do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end

  describe 'バリデーション' do
    it "is invalid without email" do
      user = FactoryBot.build(:user, email: " ")
      expect(user).to be_invalid
    end

    it "is invalid with too long email" do
      user = FactoryBot.build(:user, email: "a" *244 + "@example.com")
      expect(user).to be_invalid
    end

    it "is invalid with invalid addresses" do
      invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                      foo@bar_baz.com foo@bar+baz.com]
      invalid_addresses.each do |invalid_address|
        user = FactoryBot.build(:user, email: invalid_address)
        expect(user).to be_invalid
      end
    end

    it "is invalid with duplicated emails" do
      user1 = FactoryBot.create(:user, email: "noda@gmail.com")
      user2 = FactoryBot.build(:user, email: "noda@gmail.com")
      expect(user2).to be_invalid
    end


  end
  
end
