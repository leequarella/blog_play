class User < ActiveRecord::Base
  attr_accessible :username, :password, :email, :first_name, :last_name
  validates_presence_of :password
  validates_presence_of :username
  validates_presence_of :email
  validates_uniqueness_of :email

  def name
    return "#{first_name} #{last_name}"
  end
end
