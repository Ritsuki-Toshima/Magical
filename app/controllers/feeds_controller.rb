class FeedsController < ApplicationController
  def index
    @feeds = Feed.all
  end

  def show
    @feed = Feed.find(params[:id])
  end

  def new
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(feed_params)
    if @feed.save
      redirect_to feeds_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @feed = Feed.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def feed_params
    params.require(:feed).permit(:content_positive, :content_negative, :like)
  end
end
