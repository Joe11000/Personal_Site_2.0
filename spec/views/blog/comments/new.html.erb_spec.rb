# require 'rails_helper'

# RSpec.describe "blog/comments/new", :type => :view do
#   before(:each) do
#     assign(:blog_comment, Blog::Comment.new(
#       :author_name => "MyString",
#       :body => "MyText"
#     ))
#   end

#   it "renders new blog_comment form" do
#     render

#     assert_select "form[action=?][method=?]", blog_comments_path, "post" do

#       assert_select "input#blog_comment_author_name[name=?]", "blog_comment[author_name]"

#       assert_select "textarea#blog_comment_body[name=?]", "blog_comment[body]"
#     end
#   end
# end
