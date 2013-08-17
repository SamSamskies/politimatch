class LegislatorsController < ApplicationController
  def create
    Legislator.create(legislator_params)

    redirect_to root_path
  end

  private

  def legislator_params
    params.require(:legislator).permit(:first_name, :last_name, :party, :twitter, :website, :district, :photo)
  end
end
