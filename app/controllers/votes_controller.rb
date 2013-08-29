class VotesController < ApplicationController
  respond_to :json

  def create
    respond_with Vote.create(vote_params)
  end

  private

  def vote_params
    params.permit(:stance, :legislator_id, :bill_id)
  end
end
