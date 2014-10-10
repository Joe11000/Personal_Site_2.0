class HomesController < ApplicationController
  def welcome
  end

  def status
    render text: "15%" and return
  end
end
