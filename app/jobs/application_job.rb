class ApplicationJob < ActiveJob::Base
  def fetch_prices_from_api
    endpoint = 'https://api.coinmarketcap.com/v1/ticker/'
    currencies_list = HTTParty.get endpoint
    currencies_list.parsed_response
  end
end
