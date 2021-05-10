require 'rails_helper'

RSpec.describe "Api::V1::Favorites", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/favorites/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/favorites/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/api/v1/favorites/delete"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/favorites/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/favorites/index"
      expect(response).to have_http_status(:success)
    end
  end

end
