class GoalsController < ApplicationController

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    unless @goal.save
      render 'new'
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

  private
  def goal_params
    params.permit(:goal_money, :goal_goods).merge(user_id: current_user.id)
  end
end
