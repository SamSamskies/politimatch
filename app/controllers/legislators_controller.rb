class LegislatorsController < ApplicationController
  respond_to :json

  def show
    respond_with Legislator.find_by(leg_id: params[:id])
  end

  def create
    respond_with Legislator.create(legislator_params)
  end

  private

  def legislator_params
    params.permit(:first_name, :last_name, :party, :twitter, :website, :district, :photo_url, :leg_id)
  end
end
