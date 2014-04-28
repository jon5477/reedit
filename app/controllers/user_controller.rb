class UserController < ApplicationController
	def index
		redirect_to root_path
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			ridirect_to @user
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
		# get posts made by user
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end
