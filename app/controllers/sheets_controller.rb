class SheetsController < ApplicationController

  before_action :set_customer

  def index
    @sheets = @customer.sheets
  end
  def show
    @sheet = Sheet.find(params[:id])
    sheet_ids = []
    sheets = @customer.sheets
    sheets.each do |s|
      sheet_ids.push(s.id)
    end
    @sheet_count = sheets.count
    @position_in_list = sheet_ids.index(@sheet.id) + 1
  end
  def edit
    @sheet = Sheet.find(params[:id])
    @sheet_count = @customer.sheets.count
  end
  def update
    @sheet = Sheet.find(params[:id])
    if @sheet.update(sheet_params)
      redirect_to customer_sheet_url(@customer, @sheet)
    else
      render :edit
    end
  end
  def new
    @sheet = @customer.sheets.new
  end
  def create
    @sheet = @customer.sheets.new(sheet_params)
    if @sheet.save
      redirect_to customer_sheets_url(@customer)
    else
      render :new
    end
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

  def set_customer
        @customer = Customer.find(params[:customer_id])
  end
end
