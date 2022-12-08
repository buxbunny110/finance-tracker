class StocksController < ApplicationController
  def search_stock
    @stock = Stock.lookup(params[:stock])
    render 'users/my_portfolio'
  end
end
