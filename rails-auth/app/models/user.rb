class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
  # def password=(new_password)
  #   self.password_digest = BCrypt::Password.create(new_password)
  # end
  #
  # def password
  #   BCrypt::Password.new(self.password_digest)
  # end
  #
  # def authenticate(attempt)
  #   return self.password == attempt
  # end
end
