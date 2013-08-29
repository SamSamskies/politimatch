class LegislatorsController < ApplicationController
  respond_to :json

  def show
    @legislator = Legislator.find_by(leg_id: params[:id])

    respond_with @legislator
  end

  def create
    Legislator.create(legislator_params)

    redirect_to root_path
  end

  private

  def legislator_params
    params.permit(:first_name, :last_name, :party, :twitter, :website, :district, :photo_url, :leg_id)
  end
end
