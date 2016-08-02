class Home::ProjectsController < ApplicationController
  def show
    respond_to do |format|
      format.json {
                    begin
                      @project = Home::Project.find(params[:id]);
                      @controller_string = {
                                             description: @project.description,
                                             pictures:    render_to_string('show', layout: false, formats: [:html]),
                                             github_link: @project.github_link,
                                             live_link:   @project.live_link,
                                             name:        @project.name,
                                             objective:   @project.objective
                                           }
                       render json: @controller_string and return
                     rescue
                       render status: :error and return
                     end
                  }

      format.js { render text: "format.js here"}

      format.html { render text: "format.html here" }
    end
  end
end
