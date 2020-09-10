class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :goal
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :text
    validates :image
  end
end
