class MemoriesController < ApplicationController
  def index
    @memory = Memory.all.sum(:money)
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

  def show
    @memories = Memory.all
  end

  private
  def memory_params
    params.permit(:money, :goods_name).merge(user_id: current_user.id)
  end
end
