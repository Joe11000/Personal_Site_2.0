require 'rails_helper'

RSpec.describe "blog/entries/edit", :type => :view do
  before(:each) do
    @blog_entry = assign(:blog_entry, Blog::Entry.create!(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit blog_entry form" do
    render

    assert_select "form[action=?][method=?]", blog_entry_path(@blog_entry), "post" do

      assert_select "input#blog_entry_title[name=?]", "blog_entry[title]"

      assert_select "textarea#blog_entry_body[name=?]", "blog_entry[body]"
    end
  end
end
