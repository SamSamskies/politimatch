class BillsController < ApplicationController

  def get
    bill = Bill.find_by(openstates_uid: params[:openstates_uid])

    respond_to do |format|
      format.json { render json: bill ? bill.id : nil }
    end
  end

  def create
    Bill.create(bill_params)

    redirect_to root_path
  end

  private

  def bill_params
    params.permit(:title,:summary, :full_text_url, :formal_id, :session_id, :date_introduced, :date_passed)
  end
end
