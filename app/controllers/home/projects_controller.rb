class Home::ProjectsController < ApplicationController
  def show
    respond_to do |format|
      format.js { debugger; debugger; }
      format.html { debugger; debugger; }
      format.json { debugger; debugger; @project = Home::Project.last}
      debugger;
      debugger;
    end
  end
end
