# this is just local data to simulate client
# because IEX doesn't allow to obtain it for free tiers
# and other competitors look really limited so for educational purposes
# this will be enough

module Clients
  class StockClient
    STOCKS = {
      "AAPL": {
        price: 2912.32,
        company_name: "Apple Inc"
      },
      "GOOG": {
        price: 239.92,
        company_name: "Google Corporation",
      },
      "MSFT": {
        price: 11239.92,
        company_name: "Microsoft Corporation",
      },
    }
    def price(stock)
      stock = STOCKS[stock.to_sym]
      if stock 
        stock[:price]
      else 
        raise "No stock with such symbol"
      end
    end

    def company_name(stock)
      stock = STOCKS[stock.to_sym]
      if stock
        stock[:company_name]
      else 
        raise "No stock with such symbol"
      end
    end
  end
end