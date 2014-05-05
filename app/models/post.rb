class Post < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true

	attr_accessible :content, :rating
end
