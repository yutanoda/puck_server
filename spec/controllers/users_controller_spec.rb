require 'rails_helper'
include UserSessionsHelper

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    before do
      @user = FactoryBot.create(:user)
    end
    context "log-in-process" do
      it "returns a 200 response" do
        log_in @user
        get :index
        expect(response).to have_http_status "200"
      end
    end

    context "as a user haven't logged in" do
      it "returns a 200 response" do
        get :index
        expect(response).to redirect_to "http://test.host/"
      end
    end

    context "as a user logged in" do
      it "returns a 200 response" do
        remember @user
        get :index
        expect(response).to have_http_status "200"
      end
    end
  end
end
