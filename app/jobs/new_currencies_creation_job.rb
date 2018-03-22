class NewCurrenciesCreationJob < ApplicationJob
  queue_as :default

  def create_currencies
    fetch_prices_from_api.each do |currency|
      create_new_currency(currency) unless Currency.find_by(name: currency['name'])
    end
  end

  def create_new_currency(currency)
    Currency.create(
      name: currency['name'],
      symbol: currency['symbol'],
      rank: currency['rank'],
      price_usd: currency['price_usd'],
      price_btc: currency['price_btc'],
      market_cap_usd: currency['market_cap_usd'],
      percent_change_1h: currency['percent_change_1h'],
      percent_change_24h: currency['percent_change_24h'],
      percent_change_7d: currency['percent_change_7d']
    )
  end

  def perform
    create_currencies
  end
end
