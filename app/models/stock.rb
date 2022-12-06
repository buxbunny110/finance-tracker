class Stock < ApplicationRecord
  def self.lookup(ticker_sym)
    client = Clients::StockClient.new
    client.price(ticker_sym)
  end
end
