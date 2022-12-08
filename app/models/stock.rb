class Stock < ApplicationRecord
  def self.lookup(ticker_sym)
    client = Clients::StockClient.new
    price = client.price(ticker_sym)
    company_name = client.company_name(ticker_sym)
    new(ticker: ticker_sym, name: company_name, last_price: price)
  end
end
