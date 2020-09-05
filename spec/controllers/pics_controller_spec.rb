require 'rails_helper'

RSpec.describe PicsController, type: :controller do
  describe "pics#index action" do
    it "should successfully show the page" do
        get :index
        expect(response).to have_http_status(:success)
    end
  end

  describe "pics#new action" do
    it "should show new form" do
        get :new
        expect(response).to have_http_status(:success)
    end
  end

  describe "pics#create action" do
    it "should show create new pic in DB" do
        post :create, params: { pic: { caption: 'TESTER' } }
        expect(response).to redirect_to root_path

        pic = Pic.last
        expect(pic.caption).to eq("TESTER")
    end
  end


end