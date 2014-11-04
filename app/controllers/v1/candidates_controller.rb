class V1::CandidatesController < ApplicationController
	before_filter :load_candidate, only: [:show]

  def index
		@candidates = Candidate.all
		render json: @candidates
  end

  def show
		render json: @candidate
  end

	private

	def load_candidate
		@candidate = Candidate.find(params[:id])
	end
end