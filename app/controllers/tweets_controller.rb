class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user)
  end

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

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if @tweet.destroy
      redirect_to root_path
    else
      render 'edit'
    end
  end

   def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def tweet_params
    params.permit(:title, :text, :image, :goal_id).merge(user_id: current_user.id)
  end
end
