require 'rails_helper'

RSpec.describe Home::Project, :type => :model do
  it { is_expected.to validate_presence_of :name}
  it { is_expected.to validate_presence_of :language}
  it { is_expected.to validate_presence_of :description}

  context "#get_languages" do
    before(:all) do
      2.times{ |num| FactoryGirl.create(:project, language: "lang_#{num}")}
    end

    it "returns a sorted array of the languages in the DB" do
      projects = Home::Project.get_languages

      expect(projects).to match_array ["lang_1","lang_2"]
    end


  end
end
