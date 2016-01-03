require 'bcrypt'

module BCrypt
  class Password < String
    class << self
      def mongoize(password)
        self.create(password).mongoize
      end

      def demongoize(password)
        self.new password
      end

      def evolve(password)
        password.mongoize
      end
    end

    def mongoize
      self.to_s
    end
  end
end