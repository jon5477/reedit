require 'spec_helper'

describe "Main" do
	describe "GET /" do
		it "should be the root page" do
			visit '/'
			current_path.should == "/"
		end
		it "should have the content 'Welcome to Reedit'" do
			visit '/'
			expect(page).to have_content("Welcome to Reedit")
		end
		it "should have a registration link" do
			visit '/'
			expect(page).to have_link("Sign Up for Reedit", href: "signup/")
		end
	end
end
