require 'rails_helper'

feature "Homes", :type => :feature do

  before(:each) do
    set_host "lvh.me:3000"
  end

  context "Visitors can" do
    scenario "visit home page" do
      visit root_url
      expect(page).to have_css "#top_div"
    end

  end

  def set_host (host)
    default_url_options[:host] = host
    Capybara.app_host = "http://" + host
  end
end
