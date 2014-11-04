class V1::VotesController < ApplicationController
	before_filter :load_vote, only: [:show]

	def index
		@votes = Vote.all
		render json: @votes
	end

	def show
		render json: @vote
	end

	private

	def load_vote
		@vote = Vote.find(params[:id])
	end
end
