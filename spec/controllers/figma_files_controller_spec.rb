require 'rails_helper'

RSpec.describe FigmaFilesController, type: :controller do

  describe "GET #show" do
    it "returns http success with params id" do
      get :show, { params: { id: 'PAalkr4Lvt9nTEJTmFMphB' } }
      expect(response).to have_http_status(:success)
    end
    
    it "returns a 404 without an id" do
      get :show
      expect(response).to have_http_status(:not_found)
    end
  end

  describe "GET #nodes" do
    it "returns http success with params id" do
      get :nodes, { params: { id: 'PAalkr4Lvt9nTEJTmFMphB' } }
      expect(response).to have_http_status(:success)
      expect(response.body).to include("\"id\":\"0:0\",\"name\":\"Document\"")
    end

    it "returns a 404 without an id" do
      get :nodes
      expect(response).to have_http_status(:not_found)
    end

    it "returns a success with sort and filter params" do
      get :nodes, { params: { id: 'PAalkr4Lvt9nTEJTmFMphB', sort: 'desc', filter: 'D' } }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search" do
    it "returns http success with params id" do
      get :search, { params: { id: 'PAalkr4Lvt9nTEJTmFMphB' } }
      expect(response).to have_http_status(:success)
    end

    it "returns a 404 without an id" do
      get :search
      expect(response).to have_http_status(:not_found)
    end

    it "returns only three hashes with query Doc" do
      get :search, { params: { id: 'PAalkr4Lvt9nTEJTmFMphB', query: 'Doc' } }
      expect( JSON.parse(response.body).size ).to eq 3
    end
  end
end
