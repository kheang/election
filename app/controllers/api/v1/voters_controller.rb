class API::V1::VotersController < ApplicationController
	include ActionController::HttpAuthentication::Token::ControllerMethods

	before_filter :load_voter, only: [:show, :update]
	before_filter :restrict_access_to_voter, only: [:show, :update]

  def show
		render json: @voter
  end

	def create
		@voter = Voter.new(voter_params)

		if @voter.save
			render json: @voter, status: :created
		else
			render json: {errors: @voter.errors}, status: :bad_request
		end
	end

	def update
		if @voter.update(voter_params)
			render json: @voter, status: :ok
		else
			render json: {errors: @voter.errors}, status: :bad_request
		end
	end

	private

	def load_voter
		@voter = Voter.find(params[:id])
	end

	def restrict_access_to_voter
		unless @voter.token == params[:token]
			render nothing: true, status: :unauthorized
		end
	end

	def voter_params
		params.require(:voter).permit(:name, :party)
	end
end
