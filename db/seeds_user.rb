module Seed
  class SeedUser
    def self.seed
      user = User.find_by(account_id: "user")

      if user.nil?
        user = User.new(account_id: "user",
        password: "user",
        email: "user@gmail.com",
        authority: 0)
      end
      user.save
    end
  end
end
