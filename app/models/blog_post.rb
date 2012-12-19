class BlogPost < ActiveRecord::Base
  attr_accessible :title, :article, :author
  validates_presence_of :title  
end
