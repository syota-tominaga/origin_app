class TweetsController < ApplicationController
  def new
    @goal = Goal.find(params[:id])
  end

  def create
  end
end
