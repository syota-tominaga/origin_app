class MemoriesController < ApplicationController
  def index
    @memories = Memory.where(user_id: current_user.id)
    @memory = @memories.all.sum(:money)
    @goals = Goal.includes(:user)
    @tweets = Tweet.includes(:goal)
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
    @memories = Memory.where(user_id: current_user.id)
    @memory = @memories.all
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
