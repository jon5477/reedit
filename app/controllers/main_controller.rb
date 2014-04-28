class MainController < ApplicationController
	def index
		if current_user != nil
			redirect_to current_user
		end
	end
end
