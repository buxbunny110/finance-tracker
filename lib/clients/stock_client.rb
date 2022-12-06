# this is just local data to simulate client
# because IEX doesn't allow to obtain it for free tiers
# and other competitors look really limited so for educational purposes
# this will be enough

module Clients
  class StockClient
    STOCKS = {
      "AAPL": 45.2,
      "GOOG": 199.5,
      "MSFT": 285
    }
    def price(stock)
      STOCKS[stock.to_sym]
    end
  end
end