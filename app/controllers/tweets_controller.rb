class TweetsController < ApplicationController
  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def show
  end

  def new
  end

  def create
    Tweet.create(text: tweet_params[:text], image_url: tweet_params[:image_url],user_id: current_user.id)
    redirect_to action: 'index'
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.id = current_user.id
      Tweet.update(tweet_params)
    end
    redirect_to action: 'index'
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
    redirect_to action: 'index'
  end

  private
  def tweet_params
    params.permit(:text, :image_url)
  end

end
