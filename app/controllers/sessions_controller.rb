class SessionsController < ApplicationController
	def create
		user = User.where(name: params[:session][:name].downcase).first
		if user != nil && user.authenticate(params[:session][:password])
			flash[:success] = "Welcome back, jon5477!"
			sign_in user
			redirect_to user
		else
			flash[:error] = "Invalid username or password."
			redirect_to '/'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
