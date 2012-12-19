require "spec_helper"

describe User do
  it "has a valid factory" do
    expect(true).to be_true
    expect(create :user).to be_valid
  end
  it "is invalid without a username" do
    expect(build(:user, username: nil)).to_not be_valid
  end
  it "is invalid without a password" do
    expect(build(:user, password: nil)).to_not be_valid
  end
  it "is invalid without a email" do
    expect(build(:user, email: nil)).to_not be_valid
  end
  it "returns full name" do
    first = 'bob'
    last = 'name'
    user = create(:user, first_name: first, last_name: last)
    expect(user.name).to eq "#{first} #{last}"
  end
end
