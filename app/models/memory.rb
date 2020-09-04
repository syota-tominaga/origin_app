class Memory < ApplicationRecord
  belongs_to :user
  has_many :goals

  with_options presence: true do
    validates :money
    validates :goods_name
  end

end
