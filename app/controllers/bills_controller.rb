class BillsController < ApplicationController
  def create
    Bill.create(bill_params)

    redirect_to root_path
  end

  private

  def bill_params
    params.permit(:name, :number, :summary, :full_text_url, :date_introduced, :date_passed)
  end
end
