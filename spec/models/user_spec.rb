require "spec_helper"

describe User do
  it "has a valid factory" do
    expect(true).to be_true
    expect(create :user).to be_valid
  end
end
