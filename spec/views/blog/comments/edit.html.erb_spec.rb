# require 'rails_helper'

# RSpec.describe "blog/comments/edit", :type => :view do
#   before(:each) do
#     @blog_comment = assign(:blog_comment, Blog::Comment.create!(
#       :author_name => "MyString",
#       :body => "MyText"
#     ))
#   end

#   it "renders the edit blog_comment form" do
#     render

#     assert_select "form[action=?][method=?]", blog_comment_path(@blog_comment), "post" do

#       assert_select "input#blog_comment_author_name[name=?]", "blog_comment[author_name]"

#       assert_select "textarea#blog_comment_body[name=?]", "blog_comment[body]"
#     end
#   end
# end
