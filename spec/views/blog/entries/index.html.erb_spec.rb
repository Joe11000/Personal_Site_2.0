require 'rails_helper'

RSpec.describe "blog/entries/index", :type => :view do
  before(:each) do
    assign(:blog_entries, [
      Blog::Entry.create!(
        :title => "Title",
        :body => "MyText"
      ),
      Blog::Entry.create!(
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of blog/entries" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
