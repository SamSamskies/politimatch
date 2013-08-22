class BillsController < ApplicationController

  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save
        format.json { render json: @bill, status: :created, location: @bill }
      else
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def bill_params
    params.permit(:title,:summary, :full_text_url, :formal_id, :session_id, :date_introduced, :date_passed)
  end
end
