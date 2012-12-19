FactoryGirl.define do
  factory :blog_post do
    title "Title"
    
    factory :invalid_blog_post do
      title nil
    end
  end
end
