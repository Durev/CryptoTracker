require 'rails_helper'

describe "Access to static pages", type: :request do

  it "allows access to static_pages#home" do
    get root_path
    expect(response).to have_http_status(:success)
  end

  it "allows access to static_pages#about" do
    get static_pages_about_path
    expect(response).to have_http_status(:success)
  end

end
