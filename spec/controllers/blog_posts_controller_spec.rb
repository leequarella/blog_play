require "spec_helper"

describe BlogPostsController do
  describe "GET #index" do
    it "populates a list of blog_posts" do
      a_post = create :blog_post
      get :index
      assigns(:blog_posts).should eq [a_post]
    end

    it "renders index view"  do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    before :each do
      @post = create :blog_post
      get :show, id: @post
    end

    it "grabs appropriate blog post" do
      assigns(:blog_post).should eq @post
    end
    
    it "renders show view" do
      expect(response).to render_template :show
    end
  end
  
  describe "GET #new" do
    it "assigns a new blog post to @blog_post" do
      get :new 
      assigns(:blog_post).should be_a_new(BlogPost)
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new blog_post in the database" do
        expect{
          post :create, blog_post: attributes_for(:blog_post)
        }.to change(BlogPost, :count).by(1)
      end

      it "redirects to show action" do
        post :create, blog_post: attributes_for(:blog_post)
        expect(response).to redirect_to blog_posts_path
      end
    end
    
    context "with invalid attributes" do
      it "does not save the new blog post to database" do
        expect{
          post :create, blog_post:  attributes_for(:invalid_blog_post)
        }.to_not change(BlogPost, :count)
      end

      it "re-renders the :new template" do
        post :create, blog_post:  attributes_for(:invalid_blog_post)
        expect(response).to render_template :new
      end
    end
  end
   
end
