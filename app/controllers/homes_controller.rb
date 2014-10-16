class HomesController < ApplicationController
  def welcome
  end

  def status
    render text: "19%" and return
  end
end
