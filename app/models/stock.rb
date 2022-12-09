class Stock < ApplicationRecord
  def self.lookup(ticker_sym)
    client = Clients::StockClient.new
    begin
      price = client.price(ticker_sym)
      company_name = client.company_name(ticker_sym)
      return new(ticker: ticker_sym, name: company_name, last_price: price)
    rescue => exception
      return nil
    end
  end
end
