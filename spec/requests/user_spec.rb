require 'spec_helper'

describe "User" do
	describe "GET /user" do
		it "should redirect to root if user visits user/" do
			visit '/user/'
			current_path.should == "/"
		end
		it "should be a registration page" do
			visit users_path
			expect(page).to have_content("Sign Up for Reedit")
		end
		it "should display a default user profile" do
			visit '/user/1/'
			expect(page).to have_content("user")
		end
	end
end
