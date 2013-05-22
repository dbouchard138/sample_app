require 'spec_helper'

describe UserFriendshipsController, "#new" do 
	context "when not logged in" do 
		xit { should redirect_to(:signin_page) }

		before do
			get :new
			it { should respond_to(:redirect) }
		end
	end

	context "when logged in" do 
		before do 
			let (FactoryGirl.create(:user, login)
		end

		describe "get new page and make sure succefull"
			get :new 
			assert_response :success 
		end 

		describe "should set a flash error if the friend_id
		params is missing" do 
			get :new 
			assert_equal "Friend required", flash[:error] 
		end

<<<<<<< HEAD
		describe "display the friend's name" do 
			get :new
		end
	end
=======
	# 	describe "display the friend's name" do 
	# 		get :new
	# 	end
	# end

	describe "#create" do 
		describe  "when not logged in" do 
			it { should get(:new) }
			specify { should redirect_to login_path}
		end 
	end

	
>>>>>>> ef2f31387ffb83ec75a2a7244af90df57bdd827d
end
