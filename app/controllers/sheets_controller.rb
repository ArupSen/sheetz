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
  def new
    @sheet = Sheet.new
  end
  def create
    @sheet = Sheet.new(sheet_params)
    @sheet.save
    redirect_to @sheet
  end
  def destroy
    @sheet = Sheet.find(params[:id])
    @sheet.destroy
    redirect_to sheets_url
  end

  private
  def sheet_params
    params.require(:sheet).permit(:customer, :received_date, :rims, :info, :rim_tape, :holes, :rim_erd, :spoke_info, :pattern, :new_build)
  end
end
