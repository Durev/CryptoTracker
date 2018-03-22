class PricesUpdateJob < ApplicationJob
  queue_as :default

  def update_currencies
    fetch_prices_from_api.each do |fresh_currency_data|
      existing_currency = Currency.find_by(name: fresh_currency_data['name'])
      update_currency(existing_currency, fresh_currency_data) if existing_currency
    end
  end

  def update_currency(existing_currency, fresh_currency_data)
    existing_currency.update(
      rank: fresh_currency_data['rank'],
      price_usd: fresh_currency_data['price_usd'],
      price_btc: fresh_currency_data['price_btc'],
      market_cap_usd: fresh_currency_data['market_cap_usd'],
      percent_change_1h: fresh_currency_data['percent_change_1h'],
      percent_change_24h: fresh_currency_data['percent_change_24h'],
      percent_change_7d: fresh_currency_data['percent_change_7d']
    )
  end

  def perform
    update_currencies
  end
end
