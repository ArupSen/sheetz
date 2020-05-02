class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
  end
  def show
    @sheet = Sheet.find(params[:id])
  end
  def edit
    @sheet = Sheet.find(params[:id])
  end
  def update
    @sheet = Sheet.find(params[:id])
    @sheet.update(sheet_params)
    redirect_to @sheet
  end

  private
  def sheet_params
    params.require(:sheet).permit(:customer, :received_date, :rims, :info, :rim_tape, :holes, :rim_erd)
  end
end
