class PostController < ApplicationController
	def create
		if current_user != nil
			@post = Post.new(post_params)
			@post.user_id = current_user.id
			@post.save
			redirect_to current_user
		else
			redirect_to '/'
		end
	end

	private

	def post_params
		params.require(:post).permit(:content)
	end
end
