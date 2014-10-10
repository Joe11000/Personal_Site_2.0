class Blog::CommentsController < ApplicationController
  before_action :set_blog_comment, only: [:edit, :update, :destroy]


  # POST /blog/comments
  # POST /blog/comments.json
  def create

    entry = Blog::Entry.find(blog_comment_params[:entry_id])

    @comment = Blog::Comment.new
    @comment.author_name = blog_comment_params["author_name"]
    @comment.body = blog_comment_params["body"]

    # @comment.Blog::Comment.first

    respond_to do |format|
      if entry && @comment.save
        entry.comments << @comment
        format.js {}
      else
        format.js { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # # PATCH/PUT /blog/comments/1
  # # PATCH/PUT /blog/comments/1.json
  # def update
  #   respond_to do |format|
  #     if @blog_comment.update(blog_comment_params)
  #       format.html { redirect_to @blog_comment, notice: 'Comment was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @blog_comment }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /blog/comments/1
  # # DELETE /blog/comments/1.json
  # def destroy
  #   @blog_comment.destroy
  #   respond_to do |format|
  #     format.html { redirect_to blog_comments_url, notice: 'Comment was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_comment
      @blog_comment = Blog::Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_comment_params
      params.require(:blog_comment).permit(:author_name, :body ).tap do |white_list|
        white_list[:entry_id] = params[:entry_id]
      end
    end



end
