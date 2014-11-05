class API::V1::VotesController < ApplicationController
	include ActionController::HttpAuthentication::Token::ControllerMethods
  include ActionController::MimeResponds

	before_filter :restrict_access_to_vote, only: [:create]

	def index
    render json: hash_vote_results, root: "candidates"
  end

	def create
		@vote = Vote.new(vote_params)

		if @vote.save
			render json: @vote, status: :created
		else
			render nothing: true, status: :bad_request
		end
  end

	private

	def restrict_access_to_vote
		@voter = Voter.find(vote_params[:voter_id])
		unless @voter.token == params[:token]
			render nothing: true, status: :unauthorized
		end
	end

	def vote_params
		params.require(:vote).permit(:voter_id,:seat_id,:candidate_id)
	end

	def hash_vote_results
		results = []
		@candidates = Candidate.all
		@candidates.each do |candidate|
			hash = {}
			hash[:id] = candidate.id
			hash[:name] = candidate.name
			hash[:party] = candidate.party
			hash[:vote_count] = candidate.votes.count
			results << hash
		end
		results
	end
end
