require 'rails_helper'

RSpec.describe CurrenciesController, type: :controller do
  describe "GET #index" do
    subject do
      get :index
    end

    it "returns http success" do
      subject
      expect(response).to have_http_status(:success)
    end

    it "renders the index view" do
      subject
      expect(response).to render_template(:index)
    end

    describe "rendered content" do
      render_views
      it "includes created currencies" do
        new_currency = FactoryBot.create(:currency)
        subject
        expect(response.parsed_body).to include(new_currency.symbol)
      end
    end

    it "sorts currencies by rank"
  end

  describe "GET #show" do
    let!(:currency) { FactoryBot.create(:currency) }

    subject do
      get :show, params: { id: currency.id }
    end

    it "returns http success" do
      subject
      expect(response).to have_http_status(:success)
    end

    it "renders the show view" do
      subject
      expect(response).to render_template(:show)
    end

    describe "rendered content" do
      render_views
      it "shows matching currency" do
        subject
        expect(response.parsed_body).to include(currency.name, currency.percent_change_1h.to_s)
      end
    end
  end
end
