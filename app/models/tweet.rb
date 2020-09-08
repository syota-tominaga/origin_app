class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :goal
  has_one_attached :image
end
