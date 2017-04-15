class Admin::User < ApplicationRecord
  ROLES = ["Master", "Standard"]
  validates :role, presence: true, inclusion: { in: ROLES }

  validates :username, presence: true, uniqueness: { case_sensitive: false }

  has_secure_password
end
