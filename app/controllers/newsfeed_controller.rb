class NewsfeedController < ApplicationController
	def index
		if current_user != nil
			@all_posts = Array.new
			current_user.followed_users.each do |user|
				@all_posts.push(*user.posts)
			end
			render 'newsfeed'
		else
			# user is not signed in
			redirect_to '/'
		end
	end
end
