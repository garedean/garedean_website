require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #blog" do
    it "returns http success" do
      get :blog
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #projects" do
    it "returns http success" do
      get :projects
      expect(response).to have_http_status(:success)
    end
  end

end
