class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to memory_goals_path
    else
      binding.pry
      render 'new'
    end
  end

  private
  def goal_params
    params.permit(:goal_money, :goal_goods, :memory_id)
  end
end
