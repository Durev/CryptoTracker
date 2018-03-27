require 'rails_helper'

describe "Access to admin dashboard", type: :request do

  context "when not authenticated as admin" do
    it "denies access to sidekiq dashboard" do
      get sidekiq_web_path
      expect(response).to have_http_status(:redirect)
    end
  end

end
