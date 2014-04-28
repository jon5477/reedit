class SessionsController < ApplicationController
	def create
		user = User.where(name: params[:session][:name].downcase).first
		if user != nil && user.authenticate(params[:session][:password])
			flash[:success] = "Welcome back, jon5477!"
			render 'index'
		else
			flash[:error] = "Invalid username or password."
			redirect_to '/'
		end
	end
end
