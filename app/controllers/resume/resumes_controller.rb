class Resume::ResumesController < ApplicationController
  before_action :resume_params, only: [:download]


  def overview
  end

  def download
    if @references
      send_file "app/assets/pdfs/Joe_Noonan_Resume_07.30.16.pdf" and return
    else
      send_file "app/assets/pdfs/Joe_Noonan_Resume_07.30.16.pdf" and return
    end
  end

  private
    def resume_params
      @references = (params[:references] == 'true')
    end
end
