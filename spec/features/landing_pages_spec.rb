require 'rails_helper'

feature "LandingPages", :type => :feature do
  before :each do
    set_host ENV['DOMAIN']
    visit root_path
    byebug
  end

  it 'visits landing page' do
    expect(page.current_path).to eq root_path
  end

  it 'has components that should be visible' do
    expect(page).to have_css '#formal-pictures-container'
    expect(page).to have_css '#banner-container'
    expect(page).to have_css '#business-card'
    expect(page).to have_css '.project-pictures-container'
  end

  it 'can look at all the projects and see information there' do

    all('.projects-side-column .panel .panel-heading').each_with_index do |language, language_index|
      if language_index > 0
        language.click()
        sleep 0.5
      end

      all('.projects-side-column-container .listed-project-name').each_with_index do |project_name, project_index|
        unless(language_index == 0 && project_index == 0)
          project_name.click()
          sleep 2.5
        end

        expect(page).to have_css '.project-pictures img'
        expect(page).to have_css "#project-name-container [data-id='project-name']"
        expect(page).to have_css "#project-objective-container [data-id='project-objective']"
        expect(page).to have_css "#project-description-container [data-id='project-description']"
      end
    end
  end

  def set_host (host)
    default_url_options[:host] = host
    Capybara.app_host = host
  end
end
