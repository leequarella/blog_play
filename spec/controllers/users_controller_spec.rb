require "spec_helper"

describe UsersController do
  describe "GET #index" do
    it "populates a list of users" do
      user = create :user
      get :index
      assigns(:users).should eq [user]
    end

    it "renders index view"  do
      get :index
      expect(response).to render_template :index
    end
  end
end
