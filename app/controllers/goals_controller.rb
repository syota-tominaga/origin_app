class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to goals_path
    else
      binding.pry
      render 'new'
    end
  end

  private
  def goal_params
    params.permit(:goal_money, :goal_goods).merge(user_id: current_user.id)
  end
end
