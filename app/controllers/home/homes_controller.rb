class Home::HomesController < ApplicationController
  def welcome
    @coding_languages = Home::Project.get_languages
    @language_projects_hash = Home::Project.get_projects_with_coding_languages_hash
  end

  def status
    render text: "26%" and return
  end
end
