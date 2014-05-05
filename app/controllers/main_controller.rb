class MainController < ApplicationController
	def index
		if current_user != nil
			redirect_to '/newsfeed'
		end
	end
end
