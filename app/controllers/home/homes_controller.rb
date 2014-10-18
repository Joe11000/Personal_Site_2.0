class Home::HomesController < ApplicationController
  def welcome
    @coding_languages = Home::Project.group(:language).pluck(:language).sort
  end

  def status
    render text: "16%" and return
  end
end
