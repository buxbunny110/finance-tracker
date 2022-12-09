class StocksController < ApplicationController
  def search_stock
    @stock = Stock.lookup(params[:stock])
    if params[:stock].present?
      if @stock
        render partial: "users/result"
      else
        flash.now[:alert] = "Stock not found"
        render partial: "users/result"
      end
    else 
      flash.now[:alert] = "Stock is empty"
      render partial: "users/result"
    end
  end
end
