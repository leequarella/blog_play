class BlogPostsController < ApplicationController
  def index
    @posts = BlogPost.all
  end

  def new
    @post = BlogPost.new
  end



end
