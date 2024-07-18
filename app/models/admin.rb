class Admin < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: {minimum:5, maximum:20}
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP}
  validates :password_digest, presence: true
  
end
