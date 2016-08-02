require 'rails_helper'

RSpec.describe Home::ProjectsController, :type => :controller do

  describe "GET show" do
    before :all do
      @project = FactoryGirl.create(:home_project)

    end

    after :all do
      Home::Project.delete_all
    end

    it "returns http success" do
      xhr :get, :show,  id: @project.id
      expect(response).to have_http_status(:success)
    end

    it "returns http success" do
      xhr :get, :show,  id: @project.id, format: 'json'
      debugger;
      debugger;
      expect(response.body).to eq @project.attribute_names
      # attributes = FactoryGirl.attributes_for(:home_project)
      # [ :description, :pictures, :github_link, :live_link, :name, :objective ]
      # FactoryGirl.attributes_for(:home_project).each |attribute|
      #   expect(response.body).to have_key attribute
      # end

    end
  end
end
