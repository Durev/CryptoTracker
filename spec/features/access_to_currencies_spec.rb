require "rails_helper"

feature "Public access to currencies", type: :feature do
  scenario "visitor displays currency details from list" do
    fancy_crypto = FactoryBot.create(:currency)

    visit currencies_path

    expect(page).to have_content fancy_crypto.name
    expect(page).to have_content fancy_crypto.price_usd

    click_link "MOAR #{fancy_crypto.name}"

    expect(current_path).to eq currency_path(fancy_crypto)
    expect(page).to have_content fancy_crypto.percent_change_1h
  end
end
