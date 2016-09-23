class Home::ProjectsController < ApplicationController
  def show

    respond_to do |format|
      format.json {
                    begin
                      @project = Home::Project.find(params[:id]);
                      @controller_string = {
                                             description: @project.description,
                                             pictures:    render_to_string('home/projects/_row_of_project_pictures', layout: false, formats: [:html], locals: { project: @project }),
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
    end
  end
end
