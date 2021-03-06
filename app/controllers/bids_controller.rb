class BidsController < ApplicationController

	def create
		@bid = Bid.new bid_params
		@bid.save
		
		redirect_to auction_path(@bid.auction_id)
	end

	private
	def bid_params
		params.require(:bid).permit(:auction_id, :user_id, :amount)
	end
end
