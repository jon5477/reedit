require 'digest/sha1'

class UserController < ApplicationController
	def index
		redirect_to root_path
	end

	def new
		@user = User.new
	end

	def create
		# check if the passwords are the same
		if params[:password] == params[:password_confirmation]
			@user = User.new(user_params)
		#	@user.name = params[:name]
		#	@user.password = Digest::SHA1.hexdigest params[:password]
		#	@user.email = params[:email]
		else
			# show errors to user TODO
			redirect_to '/signup/'
		end
		#render 'show'
		#if @user.save
			# render
		#else
			# render 'new'
		#end
		@user = User.new(user_params)
	end

	def show
		@user = User.find(params[:id])
		# get posts made by user
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
