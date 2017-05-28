class Home::HomesController < ApplicationController
  def welcome
    @coding_languages = Home::Project.get_languages
    @language_projects_hash = Home::Project.get_projects_with_coding_languages_hash
    @featured_project = Home::Project.first
  end

  def status
    render text: "26%" && return
  end
end
