class Resume::ResumeController < ApplicationController
  before_action :resume_params, only: [:download]


  def overview
  end

  def download
    if @references
      send_file "app/assets/pdfs/Joe_Noonan_Resume_updated_with_references_11.13.13.pdf" and return
    else
      send_file "app/assets/pdfs/Joe_Noonan_Resume_7.7.14.pdf" and return
    end
  end

  private
    def resume_params
      @references = (params[:references] == 'true')
    end
end
