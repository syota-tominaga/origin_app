class Goal < ApplicationRecord
  belongs_to :user
  has_one    :tweet

  with_options presence: true do
    validates  :goal_money
    validates  :goal_goods
  end
  validates :goal_money, numericality: { only_integer: true }
end
