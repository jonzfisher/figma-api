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

end
