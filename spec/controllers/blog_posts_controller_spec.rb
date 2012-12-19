require "spec_helper"


describe BlogPostsController do
  describe "Actions" do 
    describe "GET #index" do
      xit "populates a list of credit_transactions" do
        t = create :user
        get :index
        assigns(:users).should eq [t]
      end

      xit "renders index view"  do
        get :index
        expect(response).to render_template :index
      end
    end
  end
end
