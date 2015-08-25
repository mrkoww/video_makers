class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_video, only: [ :create ]
  before_action :load_comment, only: [ :update, :destroy ]

  respond_to :js

  def create
    respond_with(@comment = @video.comments.create(comment_params))
  end

  def destroy
    respond_with(@comment.destroy)
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id)
  end

  def load_comment
    @comment = Comment.find(params[:id])
  end

  def load_video
    @video = Video.find(params[:video_id])
  end
end