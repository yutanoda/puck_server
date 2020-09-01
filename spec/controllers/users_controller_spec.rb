require 'rails_helper'
include UserSessionsHelper

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    context "as valid user" do
      before do
        @user = FactoryBot.create(:user)
      end
      it "returns a 200 response" do
        log_in @user
        get :index
        expect(response).to have_http_status "200"
      end
    end

    context "as invalid user" do
      before do
        @user = FactoryBot.create(:user)
      end
      it "returns a 200 response" do
        get :index
        expect(response).to redirect_to "http://test.host/"
      end
    end
  end
end
