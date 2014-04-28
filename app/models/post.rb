class Post < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at, rating DESC') }
	validates :user_id, presence: true

	attr_accessible :content, :rating, :user_id, :created_at
end
