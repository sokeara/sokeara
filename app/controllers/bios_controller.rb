class BiosController < ApplicationController
	def index
		@bio = Bio.all
	end

	def show
		@bio_show = Bio.find_by_friend_id(params[:id])
		@fri_info = Friend.find_by_id(params[:id])
	end

	def new
		@bio = Bio.new
	end

	def create
		@bio = Bio.new

		@bio.friend_id = Friend.last.id
		@bio.date_of_birth = params[:bio][:date_of_birth]
		@bio.place_of_birth = params[:bio][:place_of_birth]
		@bio.skills = params[:bio][:skills]
		@bio.favorite = params[:bio][:favorite]
		@bio.dream = params[:bio][:dream]
		@bio.save
		redirect_to friends_path
	end
end
