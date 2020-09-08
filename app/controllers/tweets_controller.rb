class TweetsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  private

  def tweet_params
    params.permit(:title, :text, :image, :goal_id).merge(user_id: current_user.id)
  end
end
