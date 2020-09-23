module Seed
  class SeedAdmin
    def self.seed
      admin = User.find_by(account_id: "admin")

      if admin.nil?
        admin = User.new(account_id: "admin",
        password: "admin",
        email: "admin@gmail.com",
        authority: 1)
      end
      admin.save
    end
  end
end
