require 'rails_helper'

RSpec.configure {|c| c.before { expect(controller).not_to be_nil }}

RSpec.describe Home::HomesController, :type => :controller do

  describe "The landing page"
    before do
      get :welcome
    end

    it "returns a valid status" do
      expect(response.status).to eq 200
    end

    it "renders the correct template" do
      expect(response).to render_template('home/homes/welcome')
    end

    it "has access to the homes helper method" do
      expect(Home::HomesHelper.earl).to eq "Honey, I'm home!"
    end


    context "receives correct project variable" do
      before :all do
        3.times { FactoryGirl.create(:home_project)}
      end

      # before do
      #   get :welcome
      # end

      after :all do
        Home::Project.delete_all
      end

      it "@coding_languages" do
        get :welcome
        expect(assigns[:coding_languages]).to match_array [ "language_1", "language_2", "language_3" ]
      end

      it "@coding_languages" do
        xhr :get, :get_test, 'joe_passing' => { 'joe_key' => 'joe_val' }
        debugger;debugger;
        # expect(assigns[:coding_languages]).to match_array [ "language_1", "language_2", "language_3" ]
      end

      # it "@language_projects_hash"
      #   expect(assigns[:language_projects_hash]).to eq { "language_1" => ""}
      # end

      # it "@featured_project"
      #   expect(assigns[:featured_project]).to eq 7
      # end
    end
  end
