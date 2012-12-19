class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
     
      t.string :title
      t.string :article
      t.string :author
      
      t.timestamps
   end
  end
end
