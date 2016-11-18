require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do

    it "returns http redirect" do
      Restaurant.create(name: "res",description: "amazing food", blurb: "milkshakes are the thing", postcode: "n7 9ds")
      delete :destroy, id: 1
      expect(response).to have_http_status(:redirect)
    end
  end

end
