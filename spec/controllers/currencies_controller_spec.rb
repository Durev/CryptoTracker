require 'rails_helper'

RSpec.describe CurrenciesController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #details" do
    it "returns http success" do
      get :details
      expect(response).to have_http_status(:success)
    end
  end
end
