class LegislatorsController < ApplicationController

  def get
    legislator = Legislator.find_by(leg_id: params[:leg_id])

    respond_to do |format|
      format.json { render json: legislator ? legislator.id : nil }
    end
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
