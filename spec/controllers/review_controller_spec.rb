require 'rails_helper'

RSpec.describe ReviewController, type: :controller do

  describe "DELETE #destroy" do
    it "returns http success" do
      delete :destroy, id: 1
      expect(response).to have_http_status(:success)
    end
  end

end
