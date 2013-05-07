class UserFriendshipsController < ApplicationController
	# before_filter :authenticate_user!, only: [:new]

	
	def new
		if params[:friend_id]
			@friend = User.where(:name, params[:friend_id] ).first
			@user_friendship = current_user.user_friendships.new(friend: @friend)
		else
			flash[:error] = "Freind required"
		end
	rescue ActiveRecord::RecordNotFound
		render file: 'public/404', status: :not_found
	end

	def create 
		if params[:friend_id]
			@friend = User.where(:name, params[:friend_id]).first
			@user_friendship = current_user.user_friendships.new(friend: @friend)
		else
			flash[:error] = "Friend required"
			redirect_to root_path 
		end
	end
end
