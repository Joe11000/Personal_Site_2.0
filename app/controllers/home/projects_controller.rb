class Home::ProjectsController < ApplicationController
  def show

    debugger
    debugger
    respond_to do |format|
      format.json { debugger;
                    debugger;
                    debugger;
                    @project = Home::Project.last;}

      format.js { debugger;
                  debugger; }

      format.html { debugger;
                    debugger;}

    end
    # @project = Home::Project.last
    # debugger
    # params[]request
    # render ''
  end
end
