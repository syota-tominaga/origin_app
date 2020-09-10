class Memory < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :money
    validates :goods_name
  end
  
  validates :money, numericality: { only_integer: true }
end
