class LegislatorsController < ApplicationController
  respond_to :json

  def show
    @legislator = Legislator.find_by(leg_id: params[:id])

    respond_with @legislator
  end

  def create
    @legislator = Legislator.new(legislator_params)

    respond_with(@legislator) do |format|
      if @legislator.save
        format.json { render json: @legislator, status: :created, location: @legislator }
      else
        format.json { render json: @legislator.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def legislator_params
    params.permit(:first_name, :last_name, :party, :twitter, :website, :district, :photo_url, :leg_id)
  end
end
