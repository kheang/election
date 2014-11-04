class API::V1::SeatsController < ApplicationController
	before_filter :load_seat, only: [:show]

	def index
		@seats = Seat.all
		render json: @seats
	end

	def show
		render json: @seat
	end

	private

	def load_seat
		@seat = Seat.find(params[:id])
	end
end
