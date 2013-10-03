class BillsController < ApplicationController
  respond_to :json

  def show
    respond_with Bill.find_by(openstates_uid: params[:openstates_uid])
  end

  def create
    respond_with Bill.create(bill_params)
  end

  private

  def bill_params
    params.permit(:title,:summary, :full_text_url, :formal_id, :session_id, :date_introduced, :date_passed)
  end
end
