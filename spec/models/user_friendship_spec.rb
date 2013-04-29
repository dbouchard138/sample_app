require 'spec_helper'

describe UserFriendship do
	# let (:friend) { FactoryGirl.create(:user) }
	# let (:friendship) { FactoryGirl.create(:friend) }
	it { should belong_to(:user) }
	it { should belong_to(:friend) } 

	# subject { userfriendship }

	it { should be_valid }

# Test "creating a friendship works without raising an exception" do 
	# 	UserFriendship.create
end

#test "that creating a friendship based on user id and friend id works"
   # UserFriendship.create user_id: usrs(:jason_.id, frind)

