class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.string :author_name
      t.text :body
      t.belongs_to :blog_entries
      t.timestamps
    end
  end
end
