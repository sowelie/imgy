class User < ActiveRecord::Base
  # set up encrypted passwords
  has_secure_password

  # relationships
  has_many :images

  # validation
  validates :username, presence: true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 8 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, email: true
end
