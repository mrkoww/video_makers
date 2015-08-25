class MainController < ApplicationController
  def index
    @videos = Video.all;
  end
end
