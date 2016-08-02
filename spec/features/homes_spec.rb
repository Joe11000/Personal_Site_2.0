require 'rails_helper'
include Capybara::DSL


feature "Homes", :type => :feature do

  before(:all) do
    @project = FactoryGirl.create(:home_project)
  end

  before(:each) do
    set_host "lvh.me:3000"
  end

  context "Visitors can" do
    scenario "visit home page" do
      visit root_url
      expect(current_path).to eq root_path
    end

    scenario "see a banner" do
      visit root_url

      find(:css, "#banner svg").visible?
    end

    scenario "see a 4 topic buttons" do
      visit root_url

      container = find(".categories")
      el = container.find(".btn#bio")
      expect(el.visible?).to eq true
      expect(el.value).to eq "Bio"

      el = container.find(".btn#resume")
      expect(el.visible?).to eq true
      expect(el.value).to eq "Resume"

      el = container.find(".btn#blog")
      expect(el.visible?).to eq true
      expect(el.value).to eq "Blog"

      el = container.find(".btn#interests")
      expect(el.visible?).to eq true
      expect(el.value).to eq "Interests"
    end


    context "see an already loaded project" do
      scenario "pictures loaded" do
        visit root_url
        project_images_elements = page.all(".project-pictures img")

        expect(project_images_elements.size).to eq
        project_images_elements.each_with_index do |image, index|
          expect(image.visible?).to eq true
          expect(image['src']).to match /\/#{@project.pictures[index]}/
        end
      end

      scenario "top project on side is focused" do
      end
    end



  end

  def set_host (host)
    default_url_options[:host] = host
    Capybara.app_host = "http://" + host
  end
end
