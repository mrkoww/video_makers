class VideosController < ApplicationController
  before_action :load_video, only: [ :show, :destroy ]
  before_action :authenticate_user!

  def index
    respond_with @videos = Video.where(user: current_user)
  end

  def new
    respond_with @video = Video.new
  end

  def create
    respond_with @video = Video.create(video_params)
  end

  def show
    @comments = Comment.where(video_id: params[:id])
  end

  def destroy
    respond_with @video.destroy
  end

  private

  def video_params
    params.require(:video).permit(:name, :description, :file).merge(user_id: current_user.id)
  end

  def load_video
    @video = Video.find(params[:id])
  end
end
