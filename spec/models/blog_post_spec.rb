require "spec_helper"

describe BlogPost do
  it "has a valid factory" do
    expect(create :blog_post).to be_valid
  end

  it "has a working invalid factory" do
    expect(build :invalid_blog_post).to_not be_valid
  end

  it "is invalid without a title" do
    expect(build :blog_post, title: nil).to_not be_valid
  end
end
