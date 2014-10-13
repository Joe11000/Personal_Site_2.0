require 'rails_helper'
include Capybara::DSL

feature "Blogs", :type => :feature do

  context "Vistor can" do

    before(:each) do
      set_host "lvh.me:3000"
    end

    scenario "visit blog page" do
      visit_blog_page

      # expect(page.current_url).to eq blog_entries_url
    end

    # scenario "visit blog page" do
    #   visit_blog_page

    #   expect(page.current_url).to eq blog_entries_url
    # end
  end



  def visit_blog_page
    visit root_url
    # save_and_open_page
    # debugger
    within ".categories" do
      find(:css, "#blog").click
    end
  end

  def set_host (host)
    default_url_options[:host] = host
    Capybara.app_host = "http://" + host
  end
end
