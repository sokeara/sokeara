class FriendsController < ApplicationController
	def index
		@fri = Friend.all
	end

	def new
		@friend = Friend.new
	end

	def create
		@friend = Friend.new

		@friend.first_name = params[:friend][:first_name]
		@friend.last_name = params[:friend][:last_name]
		@friend.photo = params[:friend][:photo]
		@friend.save
		redirect_to new_bio_path
	end

	def edit
		@friend = Friend.find_by_id(params[:id])
	end

	def update
		@friend = Friend.find_by_id(params[:id])

		@friend.first_name = params[:friend][:first_name]
		@friend.last_name = params[:friend][:last_name]
		@friend.photo = params[:friend][:photo]
		@friend.save
		redirect_to friends_path
	end

	def destroy
		friend = Friend.find_by_id(params[:id])

		friend.destroy
		flash.notice = "#{friend.first_name} #{friend.last_name} deleted successfully!"
		redirect_to friends_path
	end
end
