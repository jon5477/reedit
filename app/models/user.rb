class User < ActiveRecord::Base
	has_many :posts
	validates :name, presence: true, length: { maximum: 15 }, uniqueness: { case_sensitive: false }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
	attr_accessible :email, :name, :password, :password_confirmation
	attr_protected :password_digest
	before_save { self.email = email.downcase }
end
