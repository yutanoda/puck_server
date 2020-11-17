module Seed
  class SeedUser
    def self.seed
      user = User.find_by(login_id: "user")

      if user.nil?
        user = User.new(
          nickname: "user",
          login_id: "user",
          password: "user",
          email: "user@gmail.com"
        )
      end
      user.save
    end
  end
end


