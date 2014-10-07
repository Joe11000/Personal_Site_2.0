class Blog::EntriesController < ApplicationController
  before_action :set_blog_entry, only: [:show, :edit, :update, :destroy]


  # GET /blog/entries/1
  # GET /blog/entries/1.json
  def show
    @blog_entry_w_comments = Blog::Entry.includes(:comments).where("blog_entries.id = ?",  @blog_entry.id ).limit(1).first #.order('created_at ASC')
  end

  # # GET /blog/entries/new
  # def new
  #   @blog_entry = Blog::Entry.new
  # end

  # # GET /blog/entries/1/edit
  # def edit
  # end

  # # POST /blog/entries
  # # POST /blog/entries.json
  # def create
  #   @blog_entry = Blog::Entry.new(blog_entry_params)

  #   respond_to do |format|
  #     if @blog_entry.save
  #       format.html { redirect_to @blog_entry, notice: 'Entry was successfully created.' }
  #       format.json { render :show, status: :created, location: @blog_entry }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /blog/entries/1
  # # PATCH/PUT /blog/entries/1.json
  # def update
  #   respond_to do |format|
  #     if @blog_entry.update(blog_entry_params)
  #       format.html { redirect_to @blog_entry, notice: 'Entry was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @blog_entry }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /blog/entries/1
  # # DELETE /blog/entries/1.json
  # def destroy
  #   @blog_entry.destroy
  #   respond_to do |format|
  #     format.html { redirect_to blog_entries_url, notice: 'Entry was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_entry
      @blog_entry = Blog::Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_entry_params
      params.require(:blog_entry).permit(:title, :body)
    end
end
