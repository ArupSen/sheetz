class SheetsController < ApplicationController
  def index
    @sheets = Sheet.all
  end
  def show
    @sheet = Sheet.find(params[:id])
  end
end
