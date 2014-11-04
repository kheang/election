class V1::VotersController < ApplicationController
	before_filter :load_voter, only: [:show]

  def index
		@voters = Voter.all
		render json: @voters
  end

  def show
		render json: @voter
  end

	private

	def load_voter
		@voter = Voter.find(params[:id])
	end
end
