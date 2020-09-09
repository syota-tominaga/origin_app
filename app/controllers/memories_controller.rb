class MemoriesController < ApplicationController
  def index
    @memory = Memory.all.sum(:money)
    @goals = Goal.includes(:user)
    @tweets = Tweet.includes(:user)
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @memories = Memory.includes(:user)
  end

  def destroy
    @memory = Memory.find(params[:id])
    unless @memory.destroy
      render 'edit'
    else
      redirect_to root_path
    end
  end

  private
  def memory_params
    params.permit(:money, :goods_name).merge(user_id: current_user.id)
  end
end
